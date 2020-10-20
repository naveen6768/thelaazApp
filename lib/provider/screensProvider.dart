import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:thelaa/screens/homeMainPage.dart';
// import '../screens/homeOverviewScreen.dart';
import '../screens/kitchenOverviewScreen.dart';
import '../screens/cartOverviewScreen.dart';
import '../screens/menuPlanOverviewScreen.dart';

class ScreenProvider with ChangeNotifier {
  int index;
  String title;

  Future<void> getindex(int catchindex) {
    index = catchindex;
    print(index);
    notifyListeners();
    return null;
  }

  Widget get page {
    if (index == 0)
      return HomeMainPage();
    else if (index == 1)
      return KitchenOverviewScreen();
    else if (index == 2)
      return MenuPlanScreen();
    else
      return CartOverviewScreen();
  }

  String get gettitle {
    if (index == 0)
      return 'Home-page';
    else if (index == 1)
      return 'Kitchen';
    else if (index == 2)
      return 'Menu Plan';
    else
      return 'Cart';
  }
}
