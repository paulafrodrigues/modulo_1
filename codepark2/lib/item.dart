abstract class Item {
  String name;
  String author;
  String dateOfRelease;
  String isbn;

  Item(
      {required this.name,
      required this.author,
      required this.dateOfRelease,
      required this.isbn});

  void addSecondAuthor();

  String formatISBN() {
    if (isbn.length == 13) {
      return "${isbn.substring(0, 3)}-${isbn.substring(3, 4)}-${isbn.substring(4, 8)}-${isbn.substring(8, 12)}-${isbn.substring(12)}";
    }
    return "ISBN informado inválido!";
  }

  String formatDate() {
    final splitDate = dateOfRelease.toString().split("-");
    final dateFormat =
        "${splitDate[2].substring(0, 2)}/${splitDate[1]}/${splitDate[0]}";
    return dateFormat;
  }
}
