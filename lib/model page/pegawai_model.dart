// To parse this JSON data, do
//
//     final modelPegawai = modelPegawaiFromJson(jsonString);

import 'dart:convert';

ModelPegawai modelPegawaiFromJson(String str) => ModelPegawai.fromJson(json.decode(str));

String modelPegawaiToJson(ModelPegawai data) => json.encode(data.toJson());

class ModelPegawai {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelPegawai({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelPegawai.fromJson(Map<String, dynamic> json) => ModelPegawai(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String firstName;
  String lastName;
  String phoneNumber;
  String email;

  Datum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    phoneNumber: json["phone_number"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
  "id": id,
  "first_name": firstName,
  "last_name": lastName,
  "phone_number": phoneNumber,
  "email":email,
  };
}
