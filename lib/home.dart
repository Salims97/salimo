import 'package:flutter/services.dart';

import 'widget/numbers.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // put it here
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  TextEditingController text = TextEditingController();

  String? s;

  Color shadow = const Color.fromARGB(128, 151, 167, 195);

  Color foregound = const Color.fromARGB(255, 236, 240, 243);

  Color blue = const Color.fromARGB(255, 25, 53, 102);
  //rgba(25, 53, 102, 1)
  Color blue2 = const Color.fromARGB(255, 98, 124, 168);
  //rgba(98, 124, 168, 1)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.3,
                  transform: Matrix4.translationValues(
                    -(MediaQuery.of(context).size.width * 0.12),
                    -(MediaQuery.of(context).size.height * 0.08),
                    0.0,
                  ),
                  child: Neumorphic(
                    //drawSurfaceAboveChild: false,
                    style: NeumorphicStyle(
                      //surfaceIntensity: 1,
                      intensity: 1,
                      boxShape: const NeumorphicBoxShape.circle(),
                      depth: 20,
                      shape: NeumorphicShape.concave,
                      color: foregound,
                      shadowDarkColor: shadow,

                      // lightSource: LightSource.topLeft,
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.36,
                  top: MediaQuery.of(context).size.height * 0.08,
                  child: Image.asset(
                    'assets/track.png',
                    alignment: Alignment.center,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.height * 0.38,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Neumorphic(
                      //drawSurfaceAboveChild: false,
                      style: NeumorphicStyle(
                        // surfaceIntensity: 1,
                        intensity: 1,
                        color: foregound,
                        boxShape: const NeumorphicBoxShape.circle(),
                        depth: 20,
                        shape: NeumorphicShape.flat,
                        //shadowDarkColor: shadow,
                        // lightSource: LightSource.topLeft,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.28,
                  left: MediaQuery.of(context).size.width * 0.09,
                  child: Text(
                    ' Welcome',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: blue,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.32,
                  left: MediaQuery.of(context).size.width * 0.09,
                  child: Text(
                    ' Lets get started',
                    style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: blue,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.37,
                  left: MediaQuery.of(context).size.width * 0.09,
                  child: SizedBox(
                    //color: Colors.yellow,
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40),
                        ),
                        color: foregound,
                        depth: -5,
                      ),
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                              bottom: MediaQuery.of(context).size.height * 0.02,
                              top: MediaQuery.of(context).size.height * 0.02,
                              right: MediaQuery.of(context).size.width * 0.068),
                          border: InputBorder.none,
                          hintText: "Insert code",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: blue2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.39,
                  left: MediaQuery.of(context).size.width * 0.75,
                  child: Image.asset('assets/backspace.png'),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.32,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Number(num: '1'),
                      Number(num: '2'),
                      Number(num: '3'),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Number(num: '4'),
                      Number(num: '5'),
                      Number(num: '6'),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Number(num: '7'),
                      Number(num: '8'),
                      Number(num: '9'),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Number(num: '*'),
                      Number(num: '0'),
                      Number(num: '#'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: Text(
              'Resend code',
              style: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.underline,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: blue,
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.35,
              child: NeumorphicButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(60),
                  ),
                  shape: NeumorphicShape.concave,
                  surfaceIntensity: 0.2,
                  color: foregound,
                  depth: 3,
                  intensity: 1,
                  shadowDarkColor: shadow,
                  disableDepth: false,
                ),
                child: Center(
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
