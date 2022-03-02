import 'package:flutter/material.dart';

class AdicionarImagem extends StatefulWidget {
  const AdicionarImagem({ Key? key }) : super(key: key);

  @override
  _AdicionarImagemState createState() => _AdicionarImagemState();
}

class _AdicionarImagemState extends State<AdicionarImagem> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(55),
                      child: Image.asset(
                          'assets/images/imagem_prova.jpeg'),
                    ),
                    minRadius: 55,
                    maxRadius: 55,
                  );
  }
}