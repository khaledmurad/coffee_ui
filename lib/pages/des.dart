import 'package:coffee_app/model/coffee.dart';
import 'package:coffee_app/model/static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';


class Description extends StatefulWidget {

  int coffee;
  Description({this.coffee});

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int qua = 4;
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
              left: -70.0,
              bottom: -40.0,
              child: Image.asset(
                "assets/images/drum.png",
              ),
            ),
            Positioned(
              top: 0.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: 300.0,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: StaticData.coffees[widget.coffee].image,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: kToolbarHeight,
                    horizontal: 16.0,
                  ),
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      FlutterIcons.keyboard_backspace_mdi,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 280.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: MediaQuery.of(context).size.height - 280.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StaticData.coffees[widget.coffee].description,
                        style: TextStyle(
                          color: Color.fromRGBO(168, 158, 146, 1),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Latte with Almond Milk",
                        style: TextStyle(
                          color: Color.fromRGBO(36, 38, 33, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Almond milk is mostly water, so mixed with coffee, the almond flavor is totally overpowered by strong coffee. A good almond lattee needs to be made with a thick homemade vanilla almond milk creamer.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color.fromRGBO(168, 158, 146, 1),
                          height: 1.8,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Divider(),
                      doubleColText("Quantity", "${qua}"),
                      Divider(),
                      doubleColText("Amount Payable", "${StaticData.coffees[widget.coffee].price * qua} USD"),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: ScreenUtil().setHeight(48.0),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          color: Color.fromRGBO(168, 158, 146, 1),
                          onPressed: () {},
                          child: Text(
                            "Add to my cart",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
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

Widget doubleColText(String textOne, String textTwo) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 12.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textOne,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(36, 38, 33, 1),
          ),
        ),
        Text(
          textTwo,
          style: TextStyle(
            color: Color.fromRGBO(36, 38, 33, 1),
          ),
        ),
      ],
    ),
  );
}//carson lawland