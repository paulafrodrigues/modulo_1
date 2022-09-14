import 'package:codepark3/library.dart';
import 'package:codepark3/software.dart';

void main() {
  Library library1 = Software(
    name: "Windows",
    author: "Bill Gates",
    company: "Microsoft",
    dateOfRelease: DateTime(1985, 11, 20),
  );
  print(library1.dateOfRelease);
  print(library1.version);
}
