import 'item.dart';

final books = [];

class Book extends Item {
  
  Book({
    required super.name,
    required super.author,
    required super.isbn,
    required super.dateOfRelease
    
  });

 Book addItem(){
  return Book(name: name, author: author, isbn: isbn, dateOfRelease: dateOfRelease);
 }

 @override
  void addSecondAuthor() {
  }
  }

