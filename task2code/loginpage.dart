import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => LoginscreenState();
}

class LoginscreenState extends State<Loginscreen> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c752e),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
            ),
            const Image(
              height: 180,
              width: 180,
              image: AssetImage('assets/images/green ghost.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: const Color(0xffefecec),
              ),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: SizedBox(
                      width: 320,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60))),
                          labelText: 'Username',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60))),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'New to quizz app?',
                          style: TextStyle(fontSize: 11),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                color: Color(0xff51b155), fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: SizedBox(
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff4caf50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Icon(
                      Icons.fingerprint,
                      size: 60,
                      color: Color(0xff2196f3),
                    ),
                  ),
                  const Text(
                    'Use Touch ID',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff9e9e9e),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: ischecked,
                                  activeColor: const Color(0xff4caf50),
                                  onChanged: (newbool) {
                                    setState(() {
                                      ischecked = newbool;
                                    });
                                  }),
                              const Text(
                                'Remember me',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgrt Password?',
                              style: TextStyle(
                                  color: Color(0xff51b155), fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
