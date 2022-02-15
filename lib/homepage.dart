import 'package:autoriza/conectar.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Conecta conectar = Conecta();

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
        child: ElevatedButton(
            onPressed: () => {
//                  conectar.signInEmail('eletroluke@hotmail.com'),

                  conectar.usuario(),
                },
            child: const Text('aqui')),
      ),
    );
  }
}
