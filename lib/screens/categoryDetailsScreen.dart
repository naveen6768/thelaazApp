import 'package:flutter/material.dart';
import '../widgets/singleCategoryItem.dart';
import '../provider/multiItemsProvider.dart';

class CategoryDetailScreen extends StatelessWidget {
  static const id = 'CategoryDetailScreen';

  @override
  Widget build(BuildContext context) {
    final List argument = ModalRoute.of(context).settings.arguments;
    final String categoryId = argument[0];
    final int trackIndex = argument[1];

    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          argument[2],
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white54,
                    filled: true,
                    hintText: 'Enter fruit name',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white30, width: 1.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  10.0,
                  10.0,
                  10.0,
                  5.0,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 40.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: MultiItems()
                  .multiItem
                  .elementAt(trackIndex)[categoryId]
                  .length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 13.0,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => SingleCategoryItems(
                categoryKey: categoryId,
                indexing: trackIndex,
                singleListindex: index,
              ),
            ),
          ),
          Container(
            height: 70.0,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Text(
                  'View Cart',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
