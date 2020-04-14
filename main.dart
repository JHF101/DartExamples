import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_Card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Terry loves his yoghurt'),
    Quote(author: 'Oscar Wilde', text: 'Terry loves his yoghurt'),
    Quote(author: 'Oscar Wilde', text: 'Terry loves yoghurt'),
    Quote(author: 'Oscar Wilde', text: 'Terry loves yoghurt'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //Stateless widget
        children: quotes.map((quote) =>QuoteCard(
            quote:quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}


//
//children: quotes.map((quote){
//return Text(quote);
//}).toList()

//OLD WAY
//class _QuoteListState extends State<QuoteList> {
//  List<String> quotes = [
//    '',
//    '',
//    ''
//  ];
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey[200],
//      appBar: AppBar(
//        title: Text('Awesome Quotes'),
//        centerTitle: true,
//        backgroundColor: Colors.redAccent,
//      ),
//      body: Column(
//        children: quotes.map((quote) =>Text(quote)).toList(),
//      ),
//    );
//  }
//}

//children: quotes.map((quote) =>Text('${quote.text} - ${quote.author}')).toList(),