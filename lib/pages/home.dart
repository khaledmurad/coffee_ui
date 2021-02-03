import 'package:coffee_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 38, 33, 1),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: -70.0,
              child: Image.asset(
                "assets/images/coffee2.png",
              ),
            ),
            Positioned(
              left: -70.0,
              bottom: 0.0,
              child: Image.asset(
                "assets/images/coffee.png",
              ),
            ),
            Positioned(
              right: -70.0,
              bottom: -10.0,
              child: Image.asset(
                "assets/images/coffee_cup.png",
                width: 250.0,
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200.0,
                    ),
                    Text(
                      "Shop Best\nCoffee In\nTown",
                      style: TextStyle(
                        fontSize: 34.0,
                        height: 1.3,
                        color: Color.fromRGBO(168, 158, 146, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Experience the best taste of coffee with us exclusively",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.8,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: ScreenUtil().setHeight(48.0),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 32.0),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopPage()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text("Shop Now"),
                        color: Color.fromRGBO(168, 158, 146, 1),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
