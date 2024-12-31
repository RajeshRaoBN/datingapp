import 'package:datingapp/styled_button.dart';
import 'package:flutter/material.dart';

class DatingPref extends StatefulWidget {
  const DatingPref({super.key});

  @override
  State<DatingPref> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DatingPref> {
  int age = 18;

  void increaseAge() {
    setState(() {
      age = age < 40 ? age + 1 : 18;
    });
  }

  void decreaseAge() {
    setState(() {
      age = age > 18 ? age - 1 : 40;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.pink[500],
        child: Row(
          children: [
            Text('Age: '),
            Text('$age'),
            Text(' years '),
            Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseAge, child: Text(' + ')),
            StyledButton(onPressed: decreaseAge, child: Text(' - ')),
          ],
        ),
      ),
    );
  }
}
