import 'package:datingapp/sex_menu.dart';
import 'package:flutter/material.dart';

class SexualPref extends StatefulWidget {
  const SexualPref({super.key});

  @override
  State<SexualPref> createState() => _SexualPrefState();
}

class _SexualPrefState extends State<SexualPref> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.pink[500],
        child: Row(
          children: [
            Text('Sexual Preference: '),
            SexMenu(),
            Expanded(child: SizedBox()),
          ]
        ),
      ),
    );
  }
}