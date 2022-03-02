import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdicionarIcone extends StatelessWidget {
  final IconData icon;
  final String texto;
  
  const AdicionarIcone({Key? key, required this.icon,required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 
      children: [
        Container(
            width: 30,
            height: 30,
            child: Stack(
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                  size: 50,
                  
                ),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 5),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffc32c37),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: Text(
                          '10',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
           TextButton(
      onPressed: () {
        // Respond to button press
        Navigator.of(context).pushReplacementNamed("/notfound");
      },
      child: Text(
        texto,
        style: GoogleFonts.lilitaOne(
          textStyle:const  TextStyle(fontSize: 15.0),
          color: Colors.black
        )
      ),
    ) 
      ],
    );
  }
}
