class Exercise {
  final String _illustrationURL;
  final String _name;
  final String _description;
  final Muscle _primary;
  final Muscle _secondary;
  ExerciseType type;

  Exercise(this._illustrationURL, this._name, this._description,
      this._primary, this._secondary, this.type);

  Muscle get secondary => _secondary;

  Muscle get primary => _primary;

  String get description => _description;

  String get name => _name;

  String get illustrationURL => _illustrationURL;
}

enum Muscle {
  a,
  b,
  c
}

enum ExerciseType {
  time,
  weight,
  weightAndTime
}