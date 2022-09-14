import 'package:codepark3/library.dart';

class Software extends Library{
  int _codeSoftware = 0;

  Software(
      {required super.name,
      required super.author,
      required super.company,
      required super.dateOfRelease});

  @override
  int get version {
    final latestRelease = DateTime.now().difference(dateOfRelease).inDays ~/ 12;
    return latestRelease;
  }

    set codeSoftware(int code) {
    _codeSoftware = code;
  }
}

