import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        backgroundColor: Colors.black,
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
            image : DecorationImage(
              image: NetworkImage(
                  'https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMJAAMSO-ROYALJAAM762622D81136B/1563043649226_0..jpg?imwidth=540&impolicy=hq'
              ) ,
              fit: BoxFit.cover,

            )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [

            Image(
              image: AssetImage('https://media.istockphoto.com/id/1179997366/vector/quiz-of-marketing-design-badge-with-loudspeaker-blue-color-vector-illustration-on-white.jpg?s=612x612&w=0&k=20&c=YzeZlMHFULu6_HUz5Gnpp2PI5ujGghUf6Lpp705nO3w='),
              height : 190,
            ),
            SizedBox(
              height: 30,
            ),

            const Text(
              'ITI Quiz APP',
              style: TextStyle(
                fontFamily: 'DancingScript',
                color: Colors.yellow.shade100,
                fontSize:40,


              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              'we are creative , enjoy our app',
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'DancingScript',
                fontSize:25,


              ),
            ),
            SizedBox(
              height: 170,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.only(left: 110,right:110)
              ),
              onPressed:( ){

              },

              child: Text('START'
                  ,style: TextStyle(
                    fontSize: 22,
                  )

              ),

            )


          ],

        ),

      ),

    );









  }
}