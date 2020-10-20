import 'package:flutter/material.dart';
import '../models/homePageBanner.dart';

class HomeBanner extends ChangeNotifier {
  List<HomePageBanner> _banners = [
    HomePageBanner(
      bannerPathOne:
          "https://png.pngtree.com/thumb_back/fh260/back_pic/03/61/18/9757a719feaaef3.jpg",
      bannerPathTwo:
          'https://us.123rf.com/450wm/alejik/alejik1706/alejik170600184/79664173-vegan-banner-with-vegetables-vector-illustration-for-vegetarian-blog-or-food-website-.jpg?ver=6',
    ),
  ];

  List<HomePageBanner> get banners {
    return [..._banners];
  }

  void getBanners() {
    notifyListeners();
  }
}
