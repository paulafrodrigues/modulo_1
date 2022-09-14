//Crie uma classe de sua preferência com, no mínimo, um atributo, um método com retorno e um método sem retorno. Depois, instancie três ou mais objetos para testar esta classe.

import 'package:codepark2/book.dart';

void main() {
  Book harryPotter = Book(
      name: "Harry Potter and the Philosopher's Stone",
      author: "JK Rowling",
      isbn: "9781408855898",
      dateOfRelease: "22-07-1997",
      );
  final book = harryPotter.addItem();

  Book lordOfTheRings = Book(
      name: "Lord of the Rings: The Fellowship of the Ring",
      author: "J.R.R. Tolkien",
      isbn: "9780345339706",
      dateOfRelease: "29-07-1954",
      );
  final book2 = lordOfTheRings.addItem();

    Book hungerGames = Book(
      name: "The Hunger Games",
      author: "Suzanne Collins",
      isbn: "9780439023481",
      dateOfRelease: "14-02-2008",
      );
  final book3 = hungerGames.addItem();

  print("Nome: ${book.name} \nAutor: ${book.author} \nData de Lançamento: ${book.formatDate()} \nISBN: ${book.formatISBN()}\n");
  print(
      "Nome: ${book2.name} \nAutor: ${book2.author} \nData de Lançamento: ${book.formatDate()}  \nISBN: ${book2.formatISBN()}\n");
  print("Nome: ${book3.name} \nAutor: ${book3.author} \nData de Lançamento: ${book.formatDate()} \nISBN: ${book3.formatISBN()}\n");

}
