import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastask2/screens/test_page.dart';
import '../Global/test_data.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    required this.index,
  });

  List quizName = ["Sport Test", "History Test", "IQ Test"];
  List quizColor = [Colors.blue, Colors.blue, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  QuizScreen(
                    categoryMap: dataBase[index],
                  ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),

          child: Center(

            child: Text(
              quizName[index],
              style: GoogleFonts.actor(
                  fontSize: 40, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}
