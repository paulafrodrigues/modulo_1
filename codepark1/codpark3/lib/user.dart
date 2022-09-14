import 'dart:core';

abstract class User {
  String name;
  String? nickname;
  DateTime dateOfBirth;

  User({
    required this.name,
    this.nickname,
    required this.dateOfBirth,
  });

  int get age;
 
 
 
}
