import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thelaa/provider/screensProvider.dart';
import './screens/homeOverviewScreen.dart';
import './screens/login_screen.dart';
import './screens/welcomeScreen.dart';
import './screens/categoryDetailsScreen.dart';
import './screens/kitchenOverviewScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScreenProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          cursorColor: Color(0xff206C5F),
          primaryColor: Color(0xff206C5F),
          accentColor: Color(0xffF0F0F0),
        ),
        initialRoute: HomeOverviewScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          HomeOverviewScreen.id: (context) => HomeOverviewScreen(),
          WelcomeScreen.id: (context) => WelcomeScreen(),
          CategoryDetailScreen.id: (context) => CategoryDetailScreen(),
          KitchenOverviewScreen.id: (context) => KitchenOverviewScreen(),
        },
      ),
    );
  }
}
