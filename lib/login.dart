import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'widget/buttons.dart';


class LoginPage extends StatefulWidget {
 const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color shadow = const Color.fromARGB(128, 151, 167, 195);
  Color foregound = const Color.fromARGB(255, 236, 240, 243);
  Color blue = const Color.fromARGB(255, 25, 53, 102); //rgba(25, 53, 102, 1)
  Color blue2 = const Color.fromARGB(255, 98, 124, 168); //rgba(98, 124, 168, 1)
  Color green = const Color.fromARGB(255, 1, 255, 27); //rgba(1, 255, 27, 1)
  Color red = const Color.fromARGB(255, 255, 0, 0); //rgba(225, 0, 0, 1)

  @override
  void initState() {
    // put it here
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  bool on = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.06,
              left: MediaQuery.of(context).size.width * 0.06,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  x: 0.1,
                  y: 0.05,
                  z: 'assets/menu.png',
                ),
                Image.asset(
                  'assets/track.png',
                ),
                Button(
                  x: 0.1,
                  y: 0.05,
                  z: 'assets/Union.png',
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Center(
              child: Text(
                'Welcome back\ndear asma',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: blue,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.062,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Center(
              child: Neumorphic(
                style: NeumorphicStyle(
                  depth: -5,
                  intensity: 1,
                  color: foregound,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(30),
                  ),
                  shadowDarkColor: shadow,
                ),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.2,
                    //decoration:Dec,
                    child: NeumorphicButton(
                      onPressed: () {
                        setState(() {
                          on = !on;
                        });
                      },
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
                          on ? 'assets/on.png' : 'assets/off.png',
                          color: on ? green : red,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.036,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.33,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.41,
                    left: MediaQuery.of(context).size.width * 0.41,
                  ),
                  child: Text(
                    on ? 'Login' : 'Logout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: blue,
                    ),
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.height * 0.39,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        intensity: 1,
                        color: foregound,
                        boxShape: const NeumorphicBoxShape.circle(),
                        depth: 15,
                        shape: NeumorphicShape.flat,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.height * 0.375,
                  top: MediaQuery.of(context).size.height * 0.15,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        intensity: 1,
                        color: foregound,
                        boxShape: const NeumorphicBoxShape.circle(),
                        depth: 20,
                        shape: NeumorphicShape.concave,
                        shadowDarkColor: shadow,
                        //  shadowLightColor: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
