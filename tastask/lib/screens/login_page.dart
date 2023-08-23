import 'package:flutter/material.dart';

import 'category_page.dart';

import '../Global/test_data.dart';

class LoginPage extends StatelessWidget {

  LoginPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),

      body: Stack(
        // unbounded widget
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 27, 154, 31),
              child: Center(

                  child: Image(image: NetworkImage('https://preview.redd.it/a3vkhf9lwbo51.png?width=440&format=png&auto=webp&s=5edfa8890b76239d6dcfa7388daee5c8072fe7ff') ,
                    height: 80,
                  ),
              ),
            ),
          ),
        Container(
         padding: EdgeInsets.all(20),
         height: MediaQuery.of(context).size.height * 2 / 3, // width: 50,
         width: double.infinity,

         decoration: const BoxDecoration(
            color: Color.fromARGB(255, 226, 216, 216),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),

         child: Form(
           key: _formKey,
           child: Column(children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),

            TextFormField(
              validator: (value) {  if (value == null || value.isEmpty) {
                return 'Name cannot be empty';  }
              if (value.substring(0, 1).toUpperCase() !=      value.substring(0, 1)) {
                return 'Name must begin with an uppercase letter';  }
              if (value.length < 8) {    return 'Name must contain 8 letters or more';
              }  return null;
              },

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "User name",
                // errorBorder: ,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 36, 4, 240), width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                // border: ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),

              ),
            ),
             Padding(
               padding: const EdgeInsets.all(7.0),
               child: TextFormField(
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'password cannot be empty';
                   }
                   else if (value.length < 9) {
                     return 'password must contain 9 letters or more';    }
                   else if (RegExp(        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                       .hasMatch(value))
                   {
                     return null;
                 }
                 return 'wrong way to write password';
                   },
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.lock),
                   suffixIcon: Icon(Icons.visibility_off),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                   ),
                   labelText: 'Password',  ),
               ),
             ),


            SizedBox(
              height: 8,
            ),

            Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
            Text("New to quiz app?"),

             InkWell(
               onTap: () {
                print("Hello we are QuizApp");
             },
              child: Text(
                  "Register",
                   style: TextStyle(
                   color: Colors.green, fontWeight: FontWeight.bold),
                ),
              )
            ],
           ),

             SizedBox(
              height: 5,
           ),

            ElevatedButton(
              onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
            builder: (BuildContext context) => CategorizationScreen(),
              ),
             );
            }
          },
             child: Text("Login"),
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
               ),
                backgroundColor: Colors.green,
                  elevation: 10,
                  minimumSize: Size(90, 30)),
             ),
            SizedBox(
              height: 5,
            ),
            Icon(
               Icons.fingerprint,
               color: Colors.blue,
               size: 40,
           ),
            Text(
               "Touch ID",
                style: TextStyle(color: Colors.grey),
                ),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                 Row(
                 children: [
                   Checkbox(value: true, onChanged: (value) {}),
                   Text("Remember me"),
                   ],
                 ),

               InkWell(
                 onTap: () {
                   print("Hello we are QuizApp");
                },
                 child: Text(
                      "Forget password",
                       style: TextStyle(
                       color: Colors.green, fontWeight: FontWeight.bold),
                       ),
                     )
                   ],
                  )
                 ]),
               ),
               )
                 ],
             )
    );
  }
}



