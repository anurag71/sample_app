import 'package:flutter/material.dart';
import 'package:sample_app/SizeConfig.dart';
import 'package:sample_app/Dashboard.dart';

class People extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.pink,
          unselectedLabelColor: Colors.black38,
          indicatorWeight: SizeConfig.safeBlockVertical*0.5,
          indicatorColor: Colors.pink,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Container(
              height: SizeConfig.safeBlockVertical*10,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomRight: new Radius.circular(20.0),
                ),
              ),
              child: SizedBox(
                child: Center(
                  child: Text('Chats', style: TextStyle(
                    //color: Colors.pink,
                    fontSize: SizeConfig.safeBlockHorizontal * 5
                  ),
                  textAlign: TextAlign.center,),
                ),
              ),
            ),
            Container(
              height: SizeConfig.safeBlockVertical*10,
              decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      bottomLeft: new Radius.circular(20.0),
                    ),
                  ),
                  child: Center(
                    child: Text('Notifications', style: TextStyle(
                      //color: Colors.pink,
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                    ),),
                  ),
                ),
          ],
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Page 1")),
            Center(child: Text("Page 2")),
          ],
        ),
      ),
    );
  }
}
