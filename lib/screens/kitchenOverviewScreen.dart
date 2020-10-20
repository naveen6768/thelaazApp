import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KitchenOverviewScreen extends StatelessWidget {
  static const id = 'KitchenScreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 5.0,
          centerTitle: true,
          title: Text(
            'Kitchen',
            style: TextStyle(fontSize: 30.0, fontFamily: 'Lato'),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Chip(
                label: Text(
                  'You have not ordered anything yet!',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // Center(
            //   child: Text(
            //     'Update your Kitchen with healthy Nutrients.',
            //     style: TextStyle(
            //         fontFamily: 'Lato',
            //         fontWeight: FontWeight.w400,
            //         fontSize: 18.0),
            //   ),
            // ),
            Lottie.network(
              'https://assets5.lottiefiles.com/private_files/lf30_cdui7M.json',
            ),
            // Center(
            //   child:
            // ),
            SizedBox(
              height: 30.0,
            ),
            // Chip(
            //   elevation: 4.0,
            //   shadowColor: Colors.greenAccent,
            //   backgroundColor: Colors.blueAccent,
            //   label: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text(
            //       'Update your Kitchen!!',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontFamily: 'Lato',
            //         fontWeight: FontWeight.w600,
            //         fontSize: 18.0,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
