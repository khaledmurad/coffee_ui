import 'package:coffee_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      allowFontScaling: false,
      child: MaterialApp(
        title: 'Coffee Store',
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(243, 240, 237, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home:Home(),
      ),
    );
  }
}