
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  //home is property and after: is its value widget.
  //scaffold is widgets built in flutter scaffold is one type of layout manager.
  home: Homescreen(),

));

//making your own custom stateless widget...
//used in hot reload and also useful in reuse...DRY feature
class Homescreen extends StatelessWidget {
  //const test1((key? key1)) super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ICON WIDGET APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            icon: Icon(
              Icons.photo_camera,
              color:Colors.greenAccent,
              size: 50.0,
            ),
            label: Text(
              "Gallery",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                letterSpacing: 2.0,
                backgroundColor: Colors.redAccent,
              ),
              textAlign: TextAlign.start,
            ),
            onPressed: () {},

          ),
        ),
      ),
    );
  }
}
