import 'package:flutter/material.dart';
import 'package:sample_app/SizeConfig.dart';

class Account_Details extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
               CircleAvatar(
                 radius: SizeConfig.safeBlockHorizontal*10,
                  backgroundColor: Colors.pink,
                  child: Text('AB',style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal*10
                  )),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Name',style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal*10
                )),
              )
            ],
          ),
      ),
    );
  }
}