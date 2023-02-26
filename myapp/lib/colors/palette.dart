import 'package:flutter/material.dart'; 
class Palette { 
  static const MaterialColor white = MaterialColor( 
    0xffffffff, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    <int, Color>{ 
      50: Color(0xffffffff ),//10% 
      100: Color(0xffffffff),//20% 
      200: Color(0xffffffff),//30% 
      300: Color(0xffffffff),//40% 
      400: Color(0xffffffff),//50% 
      500: Color(0xffffffff),//60% 
      600: Color(0xffffffff),//70% 
      700: Color(0xffffffff),//80% 
      800: Color(0xffffffff),//90% 
      900: Color(0xffffffff),//100% 
    }, 
  ); 

  static const MaterialColor orange = MaterialColor( 
    0xffFF8F1C, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    <int, Color>{ 
      50: Color(0xffFF8F1C ),//10% 
      100: Color(0xffFF8F1C),//20% 
      200: Color(0xffFF8F1C),//30% 
      300: Color(0xffFF8F1C),//40% 
      400: Color(0xffFF8F1C),//50% 
      500: Color(0xffFF8F1C),//60% 
      600: Color(0xffFF8F1C),//70% 
      700: Color(0xffFF8F1C),//80% 
      800: Color(0xffFF8F1C),//90% 
      900: Color(0xffFF8F1C),//100% 
    }, 
  ); 

  static const MaterialColor blue = MaterialColor( 
    0xff48A9C5, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    <int, Color>{ 
      50: Color(0xff48A9C5),//10% 
      100: Color(0xff48A9C5),//20% 
      200: Color(0xff48A9C5),//30% 
      300: Color(0xff48A9C5),//40% 
      400: Color(0xff48A9C5),//50% 
      500: Color(0xff48A9C5),//60% 
      600: Color(0xff48A9C5),//70% 
      700: Color(0xff48A9C5),//80% 
      800: Color(0xff48A9C5),//90% 
      900: Color(0xff48A9C5),//100% 
    }, 
  ); 

  static const MaterialColor deepBlue = MaterialColor( 
    0xff4092AA, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    <int, Color>{ 
      50: Color(0xff4092AA),//10% 
      100: Color(0xff4092AA),//20% 
      200: Color(0xff4092AA),//30% 
      300: Color(0xff4092AA),//40% 
      400: Color(0xff4092AA),//50% 
      500: Color(0xff4092AA),//60% 
      600: Color(0xff4092AA),//70% 
      700: Color(0xff4092AA),//80% 
      800: Color(0xff4092AA),//90% 
      900: Color(0xff4092AA),//100% 
    }, 
  ); 
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below. 