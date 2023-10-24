import 'package:flutter/material.dart';

Color textColorwhite = Colors.white;
Color textColordark = Colors.black;
Color textColorgrey = Colors.grey;
Color textColorgreen = Color.fromARGB(255, 93, 202, 176);
Gradient button = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment(1, 1),
  colors: <Color>[
    Color.fromARGB(255, 93, 202, 176),
    Color.fromARGB(255, 68, 147, 127),
  ],
  tileMode: TileMode.clamp,
);

Gradient darkGreenGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment(1, 1),
  colors: <Color>[
    Color.fromARGB(255, 8, 17, 28),
    Color.fromARGB(255, 21, 45, 73),
  ],
  tileMode: TileMode.clamp,
);
Gradient darkGreenGradient2 = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment(1, 1),
  colors: <Color>[
    Color.fromARGB(255, 21, 45, 73),
    Color.fromARGB(255, 8, 17, 28),
  ],
  tileMode: TileMode.clamp,
);

Gradient whiteGreyGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(1, 1),
  colors: <Color>[
    Color.fromARGB(255, 206, 208, 211),
    Color.fromARGB(255, 233, 236, 239),
  ],
  tileMode: TileMode.clamp,
);
Gradient whiteGreyGradient2 = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment(1, 1),
  colors: <Color>[
    Color.fromARGB(255, 248, 249, 250),
    Color.fromARGB(255, 233, 236, 239),
    Color.fromRGBO(186, 191, 197, 1)
  ],
  tileMode: TileMode.clamp,
);
