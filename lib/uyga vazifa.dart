import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dars extends StatefulWidget {
  const Dars({super.key});

  @override
  State<Dars> createState() => _DarsState();
}

class _DarsState extends State<Dars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uyga vazifa"),
      ),
    );

  }
}
