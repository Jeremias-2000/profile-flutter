import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdicionarIconeCompartilhar extends StatelessWidget {
  const AdicionarIconeCompartilhar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Stack(
                          children: const [
                            Icon(
                              Icons.share,
                              color: Colors.black,
                              size: 50,
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed("/notfound");
                        },
                        child: Text('Compartilhar',
                            style: GoogleFonts.lilitaOne(
                                textStyle: const TextStyle(fontSize: 15.0),
                                color: Colors.black)),
                      )
                    ],
                  );
  }
}