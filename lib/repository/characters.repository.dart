import 'package:flutter_zion/model/characters_model.dart';
import 'package:http/http.dart' as http;

class CharactersRepository{
  Future<List<CharactersMatrixModel>> getDataRepository() async{
    late List<CharactersMatrixModel> model;

    try{
      final response = await http.get(Uri.parse('https://api-zion.vercel.app/api/zion'));
      if(response.statusCode == 200){
        model = CharactersMatrixModel.charactersMatrixModelFromJson(response.body);
      }
    }catch(ex){
      print('Erro');
    }
    return model;
  }
}