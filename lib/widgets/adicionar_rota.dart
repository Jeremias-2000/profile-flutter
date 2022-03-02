// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


class AdicionarRota extends StatelessWidget {
  final String nome;
  final String caminho;
  const AdicionarRota({Key? key, required this.nome, required this.caminho})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(color: Colors.red)),
      color: Colors.white,
      textColor: Colors.red,
      padding: const  EdgeInsets.all(8.0),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(caminho);
      },
      child: Text(
        nome.toUpperCase(),
        style: const  TextStyle(
          fontSize: 14.0,
        ),
      ),
    );

    
    
  }
}
