import 'package:flutter/material.dart';
import 'package:sample_app/SizeConfig.dart';
import 'package:sample_app/App.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '',
    home: MainHome(),
  ));
}

class MainHome extends StatelessWidget {
  static const length = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);
  final paragraphs = [
    "Sample Paragraph 1",
    "Sample Paragraph 2",
    "Sample Paragraph 3"
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: SizeConfig.safeBlockVertical*80,
                child: Stack(
                  alignment: FractionalOffset.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      onPageChanged: (index) => pageIndexNotifier.value = index,
                      itemCount: length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                paragraphs[index],
                                style: TextStyle(
                                    fontSize: SizeConfig.safeBlockHorizontal * 5),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    _buildExample1(),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              width: SizeConfig.safeBlockHorizontal * 60,
              child: OutlineButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                borderSide: BorderSide(
                  //Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 0.8, //width of the border
                ),
                onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => App()));
//                    Add google gin in
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: SizeConfig.safeBlockVertical * 6,
                      width: SizeConfig.safeBlockHorizontal * 6,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/Login/google_logo.png'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Continue with google',
                        style: TextStyle(
                          fontSize:
                          SizeConfig.safeBlockHorizontal * 4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }

  PageViewIndicator _buildExample1() {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder:(animationController, index) => Container(
        width: 50,
          height: 5,
        decoration: BoxDecoration(
          color: Colors.black38,
         borderRadius: BorderRadius.circular(10))
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10))
        ),
      ),
    );
  }
}
