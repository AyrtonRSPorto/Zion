import 'package:flutter/material.dart';
import 'package:flutter_zion/model/characters_model.dart';

class InfoCharacters extends StatefulWidget {
  final CharactersMatrixModel? character;

  InfoCharacters({required this.character});

  @override
  _InfoCharactersState createState() => _InfoCharactersState();
}

class _InfoCharactersState extends State<InfoCharacters> {
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
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            child: Image.network(widget.character!.img),
                            width: 250,
                            height: 250,
                          ),
                          SizedBox(height: 20),
                          Card(
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person,color: Colors.white,),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(widget.character!.name,
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white)),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Card(
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person_outline,color: Colors.white,),
                                Icon(Icons.person_outline,color: Colors.white),
                                Icon(Icons.person_outline,color: Colors.white),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(widget.character!.team.toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white)),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Icon(Icons.info),
                          SizedBox(height: 20),
                          Card(
                            color: Colors.black,
                            child: Text(
                              widget.character!.description,
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20, fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
