import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;



  Widget build(BuildContext context) {
    //   print('BUILD FUNCTION RUN IN CHOOSE LOCATION...');
    return Scaffold(
      appBar: AppBar(
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
      //     // body: ElevatedButton(
      //     //   onPressed: (){
      //     //     setState(() {
      //     //       counter +=1;
      //     //     });
      //     //   },
      //     //   child: Text('COUNTER IS : $counter'),
      //     // ),
      //
    );
  }

}
  // @override
  // void initState(){
  //   super.initState();
  //   print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
  // }
  //  Widget build(BuildContext context) {
  // //   print('BUILD FUNCTION RUN IN CHOOSE LOCATION...');
  //    return Scaffold(
  //      appBar: AppBar(
  //        title: Text('CHOOSE LOCATION'),
  //     ),
  // //     // body: ElevatedButton(
  // //     //   onPressed: (){
  // //     //     setState(() {
  // //     //       counter +=1;
  // //     //     });
  // //     //   },
  // //     //   child: Text('COUNTER IS : $counter'),
  // //     // ),
  // //
  //   );
  // }
