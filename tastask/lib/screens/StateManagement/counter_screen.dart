import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // overload in Dart Language :
  int sum(int x, int y, [int? z, int? j]) {
    if (z != null) {
      return x + y + z;
    } else if (j != null) {
      return x + y + j;
    } else if (z != null && j != null) {
      return x + y + z + j;
    } else {
      return x + y;
    }
  }

  @override
  void initState() {
    if (mounted) {
      MediaQuery.of(context).size.height;
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // sum(1,2,3);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 20,
              width: 20,
            ),
            SizedBox(
              height: 200,
              width: 100,
            ),
            Icon(Icons.abc),
            ElevatedButton(
                onPressed: () {
                  _counter++;

                  (() {});

                  print("  Our ITI Counter is : ${_counter}");
                },
                child: Text("+")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("$_counter"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter--;
                  });

                  print("  Our ITI Counter is : ${_counter}");
                },
                child: Text("_"))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}