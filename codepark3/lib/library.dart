import 'dart:core';

abstract class Library {
  String name;
  String author;
  String company;
  DateTime dateOfRelease;

  Library({
    required this.name,
    required this.author,
    required this.company,
    required this.dateOfRelease,
  });

  int get version;
}
