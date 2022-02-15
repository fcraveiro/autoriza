import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autoriza'),
        centerTitle: true,
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
    );
  }
}
