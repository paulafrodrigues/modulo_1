import 'package:codpark3/guest.dart';
import 'package:codpark3/user.dart';

void main() {
  User user1 = Guest(
    name: "Paula",
    dateOfBirth: DateTime(1988, 11, 08),
  );
  print(user1.dateOfBirth);
  print(user1.age);
}
