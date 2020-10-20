import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thelaa/provider/multiItemsProvider.dart';
import 'package:thelaa/screens/categoryDetailsScreen.dart';

class MainCategoryItem extends StatelessWidget {
  final int index;
  MainCategoryItem({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    final categories =
        Provider.of<MultiItems>(context).mainCategory.elementAt(index);
    return GridTile(
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          CategoryDetailScreen.id,
          arguments: [
            categories.mainCategoryId,
            index,
            categories.mainCategoryName,
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
                image: NetworkImage(
                  categories.catOneImageUrl,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
      footer: GridTileBar(
        title: Text(
          categories.mainCategoryName,
          style: TextStyle(
            backgroundColor: Colors.black54,
            fontSize: 26.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
