import 'package:flutter/material.dart';
import "dart:math";

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageApp = AssetImage("imgs/padrao.png");
  var _message = "Choose an option below";

  void selectedOption(String usersChoice) {
    var options = ["rock", "paper", "scissors"];

    var num = Random().nextInt(3);

    var appsChoice = options[num];

    switch (appsChoice) {
      case "rock":
        setState(() {
          this._imageApp = AssetImage("imgs/pedra.png");
        });
        break;

      case "paper":
        setState(() {
          this._imageApp = AssetImage("imgs/papel.png");
        });
        break;

      case "scissors":
        setState(() {
          this._imageApp = AssetImage("imgs/tesoura.png");
        });
        break;
    }

    if ((usersChoice == "rock" && appsChoice == "scissors") ||
        (usersChoice == "scissors" && appsChoice == "paper") ||
        (usersChoice == "paper" && appsChoice == "rock")) {
      setState(() {
        this._message = "You win!";
      });
    } else if ((usersChoice == "scissors" && appsChoice == "rock") ||
        (usersChoice == "paper" && appsChoice == "scissors") ||
        (usersChoice == "rock" && appsChoice == "paper")) {
      setState(() {
        this._message = "You lost :(";
      });
    } else {
      setState(() {
        this._message = "Tie!";
      });
    }
  }

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

            Image(image: this._imageApp),

            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(this._message,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    selectedOption("paper");
                  },
                  child: Image.asset(
                    "imgs/papel.png",
                    height: 95,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    selectedOption("rock");
                  },
                  child: Image.asset("imgs/pedra.png", height: 95),
                ),
                GestureDetector(
                  onTap: () {
                    selectedOption("scissors");
                  },
                  child: Image.asset("imgs/tesoura.png", height: 95),
                ),
              ],
            )
          ],
        ));
  }
}
