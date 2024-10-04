import 'package:flutter/material.dart';
import 'package:minimalshop/comp/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MINIMAL SHOP',
              style: TextStyle(
                fontFamily: 'DMSerifDisplay',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Get Started',
              style: TextStyle(
                fontFamily: 'DMSerifDisplay',
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const SizedBox(height: 15),
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/home_page'),
              widget: Icon(
                Icons.arrow_forward,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
