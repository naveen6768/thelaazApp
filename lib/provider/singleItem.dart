import 'package:flutter/material.dart';

class SingleItem extends ChangeNotifier {
  final String singleItemId;
  final String associatedCategoryId;
  final String singleItemImageUrl;
  final String singleItemName;
  final double price;
  final String tag;
  final bool isAvailable;

  SingleItem({
    this.singleItemId,
    this.associatedCategoryId,
    this.singleItemName,
    this.singleItemImageUrl,
    this.price,
    this.tag,
    this.isAvailable,
  });
}
