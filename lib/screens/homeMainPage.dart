import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/homeBanner.dart';
import '../provider/multiItemsProvider.dart';
import '../widgets/mainCategoryItems.dart';

class HomeMainPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ChangeNotifierProvider(
        create: (context) => MultiItems(),
        child: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      10.0,
                      10.0,
                      20.0,
                      10.0,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _drawerKey.currentState.openDrawer();
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search veggies',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white30, width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 2.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      ChangeNotifierProvider(
                        create: (context) => HomeBanner(),
                        child: Consumer<HomeBanner>(
                          builder: (context, value, child) => Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10.0),
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.0),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      HomeBanner().banners[0].bannerPathOne,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.0),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      HomeBanner().banners[0].bannerPathTwo,
                                    ),
                                  ),
                                ),
                              ),
                              Consumer<MultiItems>(
                                builder: (context, value, child) => SizedBox(
                                  height: 250.0,
                                  child: GridView.builder(
                                    padding: EdgeInsets.all(16.0),
                                    itemCount: MultiItems().mainCategory.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 4 / 3,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                      crossAxisCount: 2,
                                    ),
                                    itemBuilder: (context, index) =>
                                        MainCategoryItem(
                                      index: index,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
