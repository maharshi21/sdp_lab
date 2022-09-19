/*import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  //home is property and after: is its value widget.
  //scaffold is widgets built in flutter scaffold is one type of layout manager.
  home: Homescreen(),

));

//making your own custom stateless widget...
//used in hot reload and also useful in reuse...DRY feature
class Homescreen extends StatelessWidget{
  //const test1((key? key1)) super(key: key);



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text('ROW and COLUMN layout'),
        centerTitle: true,
        backgroundColor: Colors.red[600],

      ),

      body: Column(

          mainAxisAlignment: MainAxisAlignment.end,


          crossAxisAlignment: CrossAxisAlignment.end,
      children: [

      Row(

    ),
        Expanded(
          child: Container(
          color: Colors.deepOrange[800],
          padding: EdgeInsets.all(30.0),
          child: Text('inside container 1'),
          ),
        ),
        Container(
        color: Colors.limeAccent,
        padding: EdgeInsets.all(50.0),
        child: Text('inside container 2'),
        ),
        Container(
        color: Colors.green[800],
        padding: EdgeInsets.all(70.0),
        child: Text('inside container 3'),
        ),
        ],
        ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
        // child: const Icon(Icons.add),
      ),

    );
  }
}*/

/*import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: FinalTest1(),
));
class FinalTest1 extends StatefulWidget {
  @override
  State<FinalTest1> createState() => _FinalTest1State();
}

class _FinalTest1State extends State<FinalTest1> {
// const FinalTest1({Key? key}) : super(key: key);
  num age = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/abc.jpg'),
            ),
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'maharshi mistry',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(

              '$age',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.deepPurple[800],
                ),
                SizedBox(width: 12.0),
                Text(
                  'nmistry@gmail.com',

                  style: TextStyle(

                    color: Colors.brown[800],
                    fontSize: 16.0,
                    letterSpacing: 1.5,

                  ),
                )
              ],
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.brown,
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

import 'quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:
    'Author1'),

    Quote(author: 'Author2', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'Author1'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Colors.deepPurple,

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,

                color: Colors.deepPurple,

              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FinalTest1(),
));

class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ROW and COLUMN LAYOUT'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0.0,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepOrange[800],
              padding: EdgeInsets.all(30),
              child: Text('1'),
            ),
          ),
          Container(
            color: Colors.limeAccent,
            padding: EdgeInsets.all(30),
            child: Text('2'),
          ),
          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(30),
            child: Text('3'),

          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // must required property...
        // making change at here to test hot reloading..click --> click me---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),

    );
  }
}
