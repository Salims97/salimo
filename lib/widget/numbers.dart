// ignore_for_file: must_be_immutable
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Number extends StatelessWidget {
  String num;

  Number({ required this.num});

  Color shadow = const Color.fromARGB(128, 151, 167, 195);
  Color foregound = const Color.fromARGB(255, 236, 240, 243);
  Color blue = const Color.fromARGB(255, 25, 53, 102); //rgba(25, 53, 102, 1)

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.11,
      height: MediaQuery.of(context).size.height * 0.09,
      child: Neumorphic(
        style: NeumorphicStyle(
          intensity: 1,
          shape: NeumorphicShape.flat,
          boxShape: const NeumorphicBoxShape.circle(),
          depth: 3,
          lightSource: LightSource.topLeft,
          color: foregound,
          shadowDarkColor: shadow,
        ),
        child: Center(
          child: Text(
            num,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: blue,
            ),
          ),
        ),
      ),
    );
  }
}
