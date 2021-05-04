import 'package:flutter/material.dart';
import 'package:providerexample/model/footballer.dart';


class FootBallerCard extends StatelessWidget {
  final FootBaller footballer;

  const FootBallerCard({Key? key, required this.footballer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("${footballer.name} ${footballer.surname}"),
        leading: CircleAvatar(
          child: Text(footballer.age.toString()),
        ),
        subtitle: Text(footballer.team),
      ),
    );
  }
}
