import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // the width of the device
        height: MediaQuery.of(context).size.height * 1, // hight of the device
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/free-photo/artistic-blurry-colorful-wallpaper-background_58702-8445.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(
    // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Container(
              height: 150,
              child: Image(image: NetworkImage('https://t3.ftcdn.net/jpg/02/31/07/66/360_F_231076694_rxAik9swiCT8WEwHfYXu0noL7K8a382k.jpg')

              ),
            ),
            Text(
              "ITI Quiz App",
              style:
              GoogleFonts.dancingScript(fontSize: 50, color: Colors.black),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "We are creative, enjoy our app",
              style: GoogleFonts.pacifico(fontSize: 30, color: Colors.black),
            ),
            Spacer(),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => LoginPage(),
                        ),
                      );
                      },
                    child: Text(
                      "next",

                    ))),
          ],
        ),
      ),
    );
  }
}

