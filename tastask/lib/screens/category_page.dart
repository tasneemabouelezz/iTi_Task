import 'package:flutter/material.dart';
import 'package:tastask2/screens/test_page.dart';

import '../widgets/category.dart';

class CategorizationScreen extends StatelessWidget {
  CategorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            CategoryContainer(
              index: i,
            )
        ],

      )

    );
  }
}
