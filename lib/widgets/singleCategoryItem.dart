import 'package:flutter/material.dart';
import '../provider/multiItemsProvider.dart';

class SingleCategoryItems extends StatelessWidget {
  final String categoryKey;
  final int indexing;
  final int singleListindex;
  SingleCategoryItems({
    this.categoryKey,
    this.indexing,
    this.singleListindex,
  });

  @override
  Widget build(BuildContext context) {
    final singleItemList = MultiItems()
        .multiItem
        .elementAt(indexing)[categoryKey][singleListindex];
    // .singleItemName;

    return GridTile(
      child: GestureDetector(
        onTap: () => null,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
                image: NetworkImage(
                  singleItemList.singleItemImageUrl,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
      footer: GridTileBar(
        title: Center(
          child: Text(
            singleItemList.singleItemName,
            style: TextStyle(
              // backgroundColor: Colors.black54,
              fontSize: 20.0,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black54,
        leading: Container(
          child: Icon(Icons.add),
        ),
        trailing: Container(
          child: Icon(Icons.minimize),
        ),
      ),
    );
  }
}
