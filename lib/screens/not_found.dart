

import 'package:avaliacao1/widgets/trocar_fundo.dart';
import 'package:flutter/material.dart';



class NotFoundPage extends StatefulWidget {
  

  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CustomSwitcher()],
        ),
      body: Center(
        
        child: SingleChildScrollView(
          child: Center(
            
            child:Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed("/home");
                },
                 child: const Text('Voltar para Home',
                 style: TextStyle(color: Colors.blue),
                 )
                 ),
                 const Text('404 Not Found')
              ],) 
              ,)
              ,),
      ),
            
    );
  }
}


