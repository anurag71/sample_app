import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var assetsImage = new AssetImage('assets/1.0x/check.png');
    var image = new Image(image: assetsImage, width: 125, height: 125,);
    
    return Container(child: image);
  }
}
