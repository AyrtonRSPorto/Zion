import 'dart:convert';


String charactersMatrixModelToJson(List<CharactersMatrixModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CharactersMatrixModel {
  CharactersMatrixModel({
    required this.name,
    required this.description,
    required this.team,
    required this.img,
    required this.id,
  });

  String name;
  String description;
  String team;
  String img;
  int id;

  static List<CharactersMatrixModel> charactersMatrixModelFromJson(String str) => List<CharactersMatrixModel>.from(json.decode(str).map((x) => CharactersMatrixModel.fromJson(x)));

  factory CharactersMatrixModel.fromJson(Map<String, dynamic> json) => CharactersMatrixModel(
    name: json["name"],
    description: json["description"],
    team: json["team"],
    img: json["img"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "team": team,
    "img": img,
    "id": id,
  };

  @override
  String toString() {
    return 'CharactersMatrixModel{name: $name, description: $description, team: $team, img: $img, id: $id}';
  }
}



