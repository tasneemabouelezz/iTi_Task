import 'package:flutter/material.dart';
import 'dart:async';
import '../Global/test_data.dart';
import 'home_page.dart';

class ScoreScreen extends StatefulWidget {

  final int totalScore;
  final int totalNumOfQuestion;

  ScoreScreen({
    super.key, required this.totalScore, required this.totalNumOfQuestion
  });

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}
class _ScoreScreenState extends State<ScoreScreen>
{
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    text: "Congrate ",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                      TextSpan(
                          text: "${userNameController.text} \n",
                          style: TextStyle(
                              color: Color.fromARGB(255, 196, 12, 52),
                              fontSize: 25)),
                      const TextSpan(text: "your score is "),
                      TextSpan(
                          text:
                          "${widget.totalScore} / ${widget.totalNumOfQuestion}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 196, 12, 52),
                              fontSize: 25)),
                    ])),

            TextButton(
                onPressed: () {

                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                        const HomePage()),
                        (Route<dynamic> route) => false,
                  );
                },
                child: const Text("Play again"))
            // Text
          ],
        ),
      ),
    );
  }
}
