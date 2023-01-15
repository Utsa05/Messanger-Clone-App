import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.password,
    required this.image,
    required this.logLat,
  });

  String uid;
  String name;
  String email;
  String password;
  String image;
  LogLat logLat;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        uid: json["uid"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        image: json["image"],
        logLat: LogLat.fromJson(json["logLat"]),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "email": email,
        "password": password,
        "image": image,
        "logLat": logLat.toJson(),
      };
}

class LogLat {
  LogLat({
    required this.logitude,
    required this.latitue,
  });

  String logitude;
  String latitue;

  factory LogLat.fromJson(Map<String, dynamic> json) => LogLat(
        logitude: json["logitude"],
        latitue: json["latitue"],
      );

  Map<String, dynamic> toJson() => {
        "logitude": logitude,
        "latitue": latitue,
      };
}
