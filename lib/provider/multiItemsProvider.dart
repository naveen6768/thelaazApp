import 'package:flutter/material.dart';
import './mainCategory.dart';
import './singleItem.dart';

class MultiItems extends ChangeNotifier {
  List<MainCategory> _mainCategory = [
    MainCategory(
      catOneImageUrl:
          'https://img.etimg.com/thumb/width-1200,height-900,imgsize-322201,resizemode-1,msid-75714887/magazines/panache/doctors-suggest-having-fruits-could-help-keep-coronavirus-at-bay.jpg',
      mainCategoryId: 'fruits',
      mainCategoryName: 'Fruits',
    ),
    MainCategory(
      catOneImageUrl:
          'https://www.thespruceeats.com/thmb/LUy8LquzcwPIuCFqnbvmYRlSuH4=/1427x1427/smart/filters:no_upscale()/GettyImages-1076191342-fe807ed3b27e4993900966c5ba0f76a5.jpg',
      mainCategoryId: 'vegetables',
      mainCategoryName: 'Veggies',
    ),
  ];

  List<Map> _multiItem = [
    {
      'fruits': [
        SingleItem(
          tag: 'fruits',
          price: 100.0,
          singleItemId: 'sdfcvtwd4521',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://www.therahnuma.com/wp-content/uploads/2019/09/6000200094514.jpg',
          singleItemName: 'Apple',
        ),
        SingleItem(
          tag: 'fruits',
          price: 200.0,
          singleItemId: 'aerts458974',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://image.shutterstock.com/image-photo/isolated-group-apricots-two-whole-260nw-771910501.jpg',
          singleItemName: 'Apricot',
        ),
        SingleItem(
          price: 150.0,
          tag: 'fruits',
          singleItemId: 'atyfsde8974',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://www.healthxchange.sg/sites/hexassets/Assets/food-nutrition/good-reasons-to-eat-a-banana-today.jpg',
          singleItemName: 'Banana',
        ),
        SingleItem(
          tag: 'fruits',
          price: 100.0,
          singleItemId: 'sdfcvtwd4521',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://www.therahnuma.com/wp-content/uploads/2019/09/6000200094514.jpg',
          singleItemName: 'Apple',
        ),
        SingleItem(
          tag: 'fruits',
          price: 200.0,
          singleItemId: 'aerts458974',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://image.shutterstock.com/image-photo/isolated-group-apricots-two-whole-260nw-771910501.jpg',
          singleItemName: 'Apricot',
        ),
        SingleItem(
          price: 150.0,
          tag: 'fruits',
          singleItemId: 'atyfsde8974',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://www.healthxchange.sg/sites/hexassets/Assets/food-nutrition/good-reasons-to-eat-a-banana-today.jpg',
          singleItemName: 'Banana',
        ),
      ]
    },
    {
      'vegetables': [
        SingleItem(
          tag: 'vegetables',
          price: 100.0,
          singleItemId: 'tyeud1254',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://lh3.googleusercontent.com/proxy/En19YW48JESGx3_TfSdm6Evj7_T2-V1nfGeG-bSMAaVBmeW76LitWTwoW7Sev2uQAhXR708SIvPPWoz-QsMpEfsjCYB9ziKXWWKYoDW8qlpWWeFdwcZVBZm8qH4_P8IUDl_jXBJV58c2oiE',
          singleItemName: 'Soil Gourd',
        ),
        SingleItem(
          tag: 'vegetables',
          price: 200.0,
          singleItemId: 'vbchg6352',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://5.imimg.com/data5/CQ/GF/MY-47982580/vnr-999-hybrid-bhindi-seeds-500x500.jpg',
          singleItemName: 'Bhindi',
        ),
        SingleItem(
          tag: 'vegetables',
          price: 150.0,
          singleItemId: 'twsvs8596',
          // associatedCategoryId: 'fruits',
          isAvailable: true,
          singleItemImageUrl:
              'https://images-na.ssl-images-amazon.com/images/I/71P46K9QwqL._SX679_.jpg',
          singleItemName: 'Potato',
        ),
      ],
    }
  ];

  List<MainCategory> get mainCategory {
    return [..._mainCategory];
  }

  List<Map> get multiItem {
    return [..._multiItem];
  }

  void getMainCategory() {
    notifyListeners();
  }

  void getMultiItems() {
    notifyListeners();
  }
}
