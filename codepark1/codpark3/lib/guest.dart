import 'package:codpark3/user.dart';

class Guest extends User {
  // ignore: unused_field
  int _permission = 0;

  Guest({
    required super.name,
    required super.dateOfBirth,
    super.nickname,
  });

  @override
  int get age {
    final ageGuest = DateTime.now().difference(dateOfBirth).inDays ~/ 365;
    return ageGuest;
  }

  set permission(int authorizationLevel){
    _permission = authorizationLevel;
  }
}
