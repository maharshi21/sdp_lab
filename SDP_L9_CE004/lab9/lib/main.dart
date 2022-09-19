import 'package:flutter/material.dart';
import 'package:lab9/quote.dart';
import 'package:lab9/quoteCard.dart';
void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'I see humans but no humanity',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote("This is a quote 1", "Author 1"),
    Quote("This is a quote 2", "Author 2"),
    Quote("This is a quote 3", "Author 1"),
  ];

  // Widget quoteTemplate(quote){
  //   return quoteCard(quote: quote, delete: delete());
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteCard(quote:quote,delete:(){
          setState(() {
            quotes.remove(quote);
          });
        })).toList(),

      ),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:lab8_2/quote.dart';

class quoteCard extends StatelessWidget {
  final VoidCallback delete;
    final Quote quote;
    quoteCard({
    required this.quote,
      required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 30, 40, 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepOrangeAccent,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(onPressed: delete, icon: Icon(
              Icons.delete
            ), label: Text("Delete")
            )
          ],
        ),
      ),
    );
  }
}