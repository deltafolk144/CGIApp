// To parse this JSON data, do
//
//     final loginRes = loginResFromJson(jsonString);

import 'dart:convert';

LoginRes loginResFromJson(String str) => LoginRes.fromJson(json.decode(str));

String loginResToJson(LoginRes data) => json.encode(data.toJson());

class LoginRes {
    LoginRes({
        this.expiresIn,
        this.token,
        this.data,
    });

    String? expiresIn;
    String? token;
    Data? data;

    factory LoginRes.fromJson(Map<String, dynamic> json) => LoginRes(
        expiresIn: json["expiresIn"],
        token: json["token"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "expiresIn": expiresIn,
        "token": token,
        "data": data?.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.userName,
        this.isActive,
        this.isPdpa,
        this.fName,
        this.lName,
        this.userTypeId,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    int? id;
    String? userName;
    int? isActive;
    int? isPdpa;
    String? fName;
    String? lName;
    int? userTypeId;
    dynamic createdAt;
    dynamic updatedAt;
    dynamic deletedAt;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        userName: json["UserName"],
        isActive: json["isActive"],
        isPdpa: json["isPDPA"],
        fName: json["FName"],
        lName: json["LName"],
        userTypeId: json["UserTypeID"],
        createdAt: json["CreatedAt"],
        updatedAt: json["UpdatedAt"],
        deletedAt: json["DeletedAt"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "UserName": userName,
        "isActive": isActive,
        "isPDPA": isPdpa,
        "FName": fName,
        "LName": lName,
        "UserTypeID": userTypeId,
        "CreatedAt": createdAt,
        "UpdatedAt": updatedAt,
        "DeletedAt": deletedAt,
    };
}
