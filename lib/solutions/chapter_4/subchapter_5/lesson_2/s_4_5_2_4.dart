import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String name = '';
  String buttonText = 'Name anzeigen';

  final String meinName = 'Davut Coskun';

  void toggleName() {
    // *
    setState(() {
      if (name.isEmpty) {
        name = meinName;
        buttonText = 'Name verstecken';
      } else {
        name = '';
        buttonText = 'Name anzeigen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: toggleName,
          child: Text(buttonText),
        ),
      ],
    );
  }
}
//*
//  Die methode toggleName geht auch mit ternary Operator:
//  void toggleName() {
//  setState(() {
//  final istLeer = name.isEmpty;
//  name = istLeer ? meinName : '';
//  buttonText = istLeer ? 'Name verstecken' : 'Name anzeigen';
//  });
//  }
