// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Button extends StatelessWidget {
  double x, y;
  String z;

  Button({
    required this.x,
    required this.y,
    required this.z,
  });

  Color shadow = const Color.fromARGB(128, 151, 167, 195);
  Color foregound = const Color.fromARGB(255, 236, 240, 243);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * y,
      width: MediaQuery.of(context).size.width * x,
      //decoration:Dec,
      child: Neumorphic(
        //  onPressed: () {},
        style: NeumorphicStyle(
          boxShape: const NeumorphicBoxShape.circle(),
          color: foregound,
          depth: 1,
          intensity: 1,
          shadowDarkColor: shadow,
          // shadowLightColor: shadow,
        ),
        child: Center(
          child: Image.asset(
            z,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
