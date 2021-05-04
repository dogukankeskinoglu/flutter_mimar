import 'package:flutter/material.dart';


class FootBaller extends ChangeNotifier {
  final String name;
  final String surname;
  final String team;
  final int age;

  
  FootBaller(this.name, this.surname, this.team, this.age);

  
}
