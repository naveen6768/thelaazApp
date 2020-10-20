import 'package:flutter/material.dart';
import './login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'WelcomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191847),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '  Thelaaz Provides you \n Fresh Nutrients at your \n          doorstep.',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Sofia',
                fontSize: 27.0,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('images/short_lady.png'),
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage('images/jeans_lady.png'),
                  ),
                ),
              ],
            ),
            Text(
              'Your nutrients are just \n    one click away.',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Sofia',
                fontSize: 27.0,
              ),
            ),
            RaisedButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginScreen.id);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Continue!',
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Lato',
                        color: Color(0xff191847),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
