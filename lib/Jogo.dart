import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("JoKenPo"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // text
            // img
            // text resultado
            // linha 3 imgs
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text("App's Choice",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            Image.asset("imgs/padrao.png"),

            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text("Choose an option below",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "imgs/papel.png",
                  height: 95,
                ),
                Image.asset("imgs/pedra.png", height: 95),
                Image.asset("imgs/tesoura.png", height: 95),
              ],
            )
          ],
        ));
  }
}
