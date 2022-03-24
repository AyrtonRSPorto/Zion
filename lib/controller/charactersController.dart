import 'package:flutter_zion/model/characters_model.dart';
import 'package:flutter_zion/repository/characters.repository.dart';
import 'package:mobx/mobx.dart';

part 'charactersController.g.dart';

class CharactersController = _CharactersControllerBase
    with _$CharactersController;

abstract class _CharactersControllerBase with Store {
  CharactersRepository _repositoryCharacters = CharactersRepository();

  @observable
  List<CharactersMatrixModel> modelCharacter = [];

  @action
  getDataCharacter() async {
    try {
      await _repositoryCharacters.getDataRepository().then((value) {
        modelCharacter = value;
      });
    } catch (e) {
      throw Exception(e);
    }
    //return modelCharacter;
  }
}
