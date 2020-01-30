import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData.dark(),
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: ' Joel', text: 'What if i told you i like you?' ),
    Quote(author: ' Joel', text: 'Kept on saying you were taken'),
    Quote(author: ' Joel', text:'I have nothing to declare except my genius'),
    Quote(author: ' Joel', text:'Said that to myself...Thinking'),
    Quote(author: ' Joel', text:'The truth is rarely pure and never simple'),
    Quote(author: ' Amarachi', text:  'In this life na only yourself you get,'
        ' before you na you and after you na still the same you'),
  ];



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.format_quote), onPressed: null)
        ],
        backgroundColor: Colors.black,
        title: Text('Awesome Quotes'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            //below, for each item on the list, we would map through each quote and fire a function for each one,
            // then for each quote we get a new instance of the quote card which returns the widget under the quote card
            //which contains -- outputs the quote data
            children: quotes.map((quote) => QuoteCard(
                quote: quote,
                delete: (){
                  setState(() {
                    quotes.remove(quote);
                  });
                }
            )).toList(),
          ),
        ],
      )
    );
  }
}

