import 'package:flutter/material.dart';

class MainCategory extends ChangeNotifier {
  final String mainCategoryId;
  final String mainCategoryName;
  final String catOneImageUrl;
  // final Map<String, List> singleItemMapped;

  MainCategory({
    this.mainCategoryId,
    this.mainCategoryName,
    this.catOneImageUrl,
    // this.singleItemMapped,
  });
}
