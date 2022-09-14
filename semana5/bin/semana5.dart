//2 OBJETOS MATERIAIS + 3 ATRIBUTOS CADA E 3 MÉTODOS CADA
class Library {
  String books;
  String magazines;
  String dvds;

  Library({required this.books,  required this.magazines, required this.dvds});
 
 void addBook(){
  print("Livro cadastrado!");
 }
 
 void pickItem(){
    print("Você deverá devolver a revista ou renovar o empréstimo em uma semana!");
  }
 
 void returnItem(){
    print("Você devolveu o item emprestado!");
 }
}
 
 class Book {
  String name;
  String author;
  int? pageQtd;
  
  Book({required this.name, required this.author, this.pageQtd});
  void registerBook() {}
  void lookAuthor() {}
  void showBook() {}
  }
 
 
 //2 OBJETOS ABSTRATROS C/ ATRIBUTOS E MÉTODOS
 
 class BankTransfer {
  double valueToTransfer;
  String? nameOfTransfer;
  int dateOfTransfer;

  BankTransfer(this.valueToTransfer, this.dateOfTransfer, [this.nameOfTransfer]);
  
  void makeTransfer() {}
  void selectContact() {}
  void selectDate() {}
 }
 
 class Animal {
    String? name;
    double? weight;
    String? color;
    
  void run() {}
  void walk() {}
  void makeSound() {}
}
 