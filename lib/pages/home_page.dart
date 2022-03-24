import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_zion/controller/charactersController.dart';
import 'package:flutter_zion/model/characters_model.dart';
import 'package:flutter_zion/pages/infos_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CharactersMatrixModel? _valueModel;
  late CharactersController controller;

  @override
  void initState() {
    controller = CharactersController();
    _loadCharacter();
    super.initState();
  }

  _loadCharacter() async {
    await controller.getDataCharacter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text(
            'Z I O N',
            style: TextStyle(color: Colors.green),
          ))),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.green, Colors.greenAccent])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(child: Image.asset('assets/image/matrix.png')),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Observer(
                  builder: (_) {
                    return DropdownButton<CharactersMatrixModel>(
                      hint: Text('Escolha um personagem'),
                      items: controller.modelCharacter
                          .map((e) =>
                              new DropdownMenuItem<CharactersMatrixModel>(
                                  value: e, child: Text(e.name)))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _valueModel = value;
                        });
                      },
                      value: _valueModel,
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    if (_valueModel != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InfoCharacters(character: _valueModel)));
                    }else{
                      Fluttertoast.showToast(
                          msg: 'Selecione um personagem',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.white,
                          textColor: Colors.black,
                          fontSize: 16.0
                      );
                    }
                  },
                  elevation: 100.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  //highlightColor: Colors.white,
                  color: Colors.transparent,
                  child: Container(
                    child: Text(
                      'ENTRE NA TOCA DO COELHO',
                      style: TextStyle(
                          color: Colors.green, fontFamily: 'Sans-serif'),
                    ),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );
}
