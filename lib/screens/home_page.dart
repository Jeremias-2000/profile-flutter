import 'package:avaliacao1/widgets/adicionar_icone.dart';
import 'package:avaliacao1/widgets/adicionar_icone_compartilhar.dart';
import 'package:avaliacao1/widgets/adicionar_imagem.dart';
import 'package:avaliacao1/widgets/adicionar_rota.dart';
import 'package:avaliacao1/widgets/trocar_fundo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [CustomSwitcher()],
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AdicionarImagem(),
                  SizedBox(height: 31),
                  Text('Olá Jeremias',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.white, fontSize: 35.0),
                      ))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.lightBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const AdicionarIcone(
                    icon: Icons.shopping_cart,
                    texto: 'Vendas',
                  ),
                  const AdicionarIcone(icon: Icons.phone, texto: 'Ligações'),
                  AdicionarIcone(icon: Icons.payments, texto: 'Pagamentos'),
                  AdicionarIconeCompartilhar(),
                ],
              ),
            ),
            const SizedBox(height: 320),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AdicionarRota(nome: "Home", caminho: "/home"),
                      AdicionarRota(nome: "Analytics", caminho: "/notfound"),
                      AdicionarRota(nome: "Help?", caminho: "/notfound")
                    ],
                  ),
                  SizedBox(height: 25.0),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () =>
              {Navigator.of(context).pushReplacementNamed("/notfound")},
        ));
  }
}
