import 'package:badges/badges.dart';
import 'package:coffee_app/model/coffee_listing.dart';
import 'package:coffee_app/model/static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';


class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int _activeTab = 0;
  List<Widget> pages = [CoffeeListing(), Container(height: 600,), CoffeeListing()];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                left: 100.0,
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    "assets/images/coffee2.png",
                    width: 150.0,
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: -180.0,
                child: Image.asset(
                  "assets/images/square.png",
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/drum.png",
                ),
                left: -70.0,
                bottom: -40.0,
              ),
              SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                FlutterIcons.keyboard_backspace_mdi,
                              ),
                            ),
                            Badge(
                              position: BadgePosition.bottomStart(
                                  bottom: -5.0, start: 4.0),
                              badgeContent: Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              badgeColor: Color.fromRGBO(36, 38, 33, 1),
                              child: Image.asset(
                                "assets/images/shopping_bag.png",
                                width: 45.0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "Shop",
                          style: TextStyle(
                            color: Color.fromRGBO(36, 38, 33, 1),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 24.0),
                          height: ScreenUtil().setHeight(60.0),
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            // Let's create a model for categories and populate with data.
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    _activeTab = index;
                                  });
                                },
                                // Little switch animation
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 450),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  height: ScreenUtil().setHeight(48.0),
                                  decoration: BoxDecoration(
                                    color: _activeTab == index
                                        ? Color.fromRGBO(168, 158, 146, 1)
                                        : Color.fromRGBO(168, 158, 146, 1).withOpacity(
                                      .2,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      StaticData.categories[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _activeTab == index
                                            ? Colors.white
                                            : Color.fromRGBO(168, 158, 146, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                width: 15.0,
                              );
                            },
                            itemCount: StaticData.categories.length,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        AnimatedSwitcher(
                          duration: Duration(
                            milliseconds: 450,
                          ),
                          child: pages[_activeTab],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

