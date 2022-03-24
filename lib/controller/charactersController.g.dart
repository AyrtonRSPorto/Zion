// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charactersController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharactersController on _CharactersControllerBase, Store {
  final _$modelCharacterAtom =
      Atom(name: '_CharactersControllerBase.modelCharacter');

  @override
  List<CharactersMatrixModel> get modelCharacter {
    _$modelCharacterAtom.reportRead();
    return super.modelCharacter;
  }

  @override
  set modelCharacter(List<CharactersMatrixModel> value) {
    _$modelCharacterAtom.reportWrite(value, super.modelCharacter, () {
      super.modelCharacter = value;
    });
  }

  final _$getDataCharacterAsyncAction =
      AsyncAction('_CharactersControllerBase.getDataCharacter');

  @override
  Future getDataCharacter() {
    return _$getDataCharacterAsyncAction.run(() => super.getDataCharacter());
  }

  @override
  String toString() {
    return '''
modelCharacter: ${modelCharacter}
    ''';
  }
}
