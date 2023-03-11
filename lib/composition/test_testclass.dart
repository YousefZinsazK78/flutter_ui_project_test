class ProgrammingLanguage {
  int? id;
  String? name;
  List<Community>? communities;
}

class Community {
  int? id;
  String? name;
  List<Programmer>? programmers;
}

class Programmer {
  int? id;
  String? name;
  List<Programmer>? friends;
}
