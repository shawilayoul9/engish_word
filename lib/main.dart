import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp
    (
    home: MyApp(),
  ),);
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  List<Quote> quotes =
      [
        Quote(text:'do good  to othere and it wil come back to you',author: 'shawil'),
        Quote(text:'do what ever you love to do',author: 'shawil'),
        Quote(text:'try to do something amazing in your free time',author: 'shawil'),
        Quote(text:'be yourself because everybody is taken',author: 'shawil'),
      ];
      Widget quoteTemplate(quote){
        return Card(
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>
               [
                 Text(
                   quote.text,
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.brown,
                   ),
                 ),
                 SizedBox(height: 8.0,),
                 Text(
                   quote.author,
                   style: TextStyle(fontSize: 20.0,color: Colors.greenAccent),
                 ),

               ],
              ),
          ),
        );
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar
         (
        title: Text('list of my quote'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column
         (
          
        children: quotes.map((quote) =>quoteTemplate(quote)).toList(),
      ),
      backgroundColor: Colors.yellowAccent,
    );
  }
}
