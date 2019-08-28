import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/animated_focus_light.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

void main() {
  runApp(MaterialApp(
    title: "hello",
    debugShowCheckedModeBanner: false,
    home: SecondHome(),
  ));
}

class SecondHome extends StatefulWidget {
  @override
  SecondHome1 createState() => SecondHome1();
}


class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

class SecondHome1 extends State<SecondHome> {

  List<TargetFocus> targets = List();

  GlobalKey fb_login = GlobalKey();
  GlobalKey google_login = GlobalKey();
  GlobalKey custom_email = GlobalKey();
  GlobalKey forgot_password = GlobalKey();

  @override
  void initState() {
    initTargets();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child:Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.white24,
                  onPressed: () {
                    //Add navigator code
                  },
                  child: Wrap(
                    children: <Widget>[
                      Icon(Icons.keyboard_backspace, color: Colors.black)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Text(
                  'Login Now',
                  style: TextStyle(
                      fontFamily: 'Noto Sans',
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.safeBlockHorizontal * 8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Please login to continue using our app',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: SizeConfig.safeBlockHorizontal * 4),
                ),
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 100,
                height: SizeConfig.safeBlockVertical * 23,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Login instantly',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: SizeConfig.safeBlockHorizontal * 4,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    key: fb_login,
                    width: SizeConfig.safeBlockHorizontal*45,
                    child: RaisedButton(
                      elevation: 0,
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: SizeConfig.safeBlockVertical*4,
                          width: SizeConfig.safeBlockHorizontal*8,
                          decoration: BoxDecoration(

                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/Login/fb_login2.png')),
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.black45)),
                      onPressed: ()
                      {//Add navigator code
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      key: google_login,
                      width: SizeConfig.safeBlockHorizontal*45,
                      child: RaisedButton(
                        elevation: 0,
                        color: Colors.white70,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: SizeConfig.safeBlockVertical*4,
                            width: SizeConfig.safeBlockHorizontal*8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/Login/google_logo.png')),
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.black45)),
                        onPressed: (){
                          //Add navigator code
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'or login with email/mobile',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: SizeConfig.safeBlockHorizontal * 4,
                    ),
                  ),
                ),
              ),
              Column(
                key: custom_email,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email ID or Mobile Number',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:
                    Container(
                      width: SizeConfig.safeBlockHorizontal*90,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "Email",
                            border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:
                    Container(
                      width: SizeConfig.safeBlockHorizontal*90,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "Password",
                            border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5,0,0,0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:
                          Checkbox(value: false,
                              onChanged: null),
                        ),
                      ),
                      Text('Remember me'),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,5,0),
                        child:
                        RaisedButton(
                          onPressed: (){},
                          elevation: 0,
                          color: Colors.white70,
                          child: Text('Forgot Password?',
                            key:forgot_password,
                            style: TextStyle(color: Colors.indigo),),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.center,
                      child:SizedBox(
                        height: SizeConfig.safeBlockVertical*5,
                        width: SizeConfig.safeBlockHorizontal*90,
                        child: RaisedButton(
                          elevation: 0,
                          color: Colors.indigo[600],
                          child:
                          Text(
                            'Login to my account',
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal*4,
                              color: Colors.white70,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.black45)),
                          onPressed: ()
                          {//Add navigator code
                          },
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?"),
                      RaisedButton(
                        onPressed: (){},
                        elevation: 0,
                        color: Colors.white70,
                        child: Text('Register now',style: TextStyle(color: Colors.indigo),),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void initTargets() {
    targets.add(TargetFocus(
      identify: "Target 1",
      keyTarget: fb_login,
      contents: [
        ContentTarget(
            align: AlignContent.bottom,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Facebook Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Use your existing facebook credentials to continue using our app.",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.RRect,
    ));
    targets.add(TargetFocus(
      identify: "Target 2",
      keyTarget: google_login,
      contents: [
        ContentTarget(
            align: AlignContent.bottom,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Google Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Continue using our app by using your signed in Google account.",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.RRect,
    ));
    targets.add(TargetFocus(
      identify: "Target 3",
      keyTarget: custom_email,
      contents: [
        ContentTarget(
            align: AlignContent.top,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login using email",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Use your already registered credentials to continue using our app.",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.RRect,
    ));
    targets.add(TargetFocus(
      identify: "Target 4",
      keyTarget: forgot_password,
      contents: [
        ContentTarget(
            align: AlignContent.top,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Reset your password",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.RRect,
    ));
  }

  void showTutorial() {
    TutorialCoachMark(context,
        targets: targets,
        colorShadow: Colors.red,
        textSkip: "SKIP",
        paddingFocus: 10,
        opacityShadow: 0.8, finish: () {
          print("finish");
        }, clickTarget: (target) {
          print(target);
        }, clickSkip: () {
          print("skip");
        })
      ..show();
  }

  void _afterLayout(_) {
    Future.delayed(Duration(milliseconds: 100), () {
      showTutorial();
    });
  }
}
