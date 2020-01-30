import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 20.0),
      child: Padding(
        padding:  const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
              style: TextStyle(fontSize: 20.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 1.0,), //used to give space between two widgets
            //function call for the author
            Text(quote.author,
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            new SizedBox(height: 1.0,),
            new FlatButton.icon(
              onPressed: delete,
              label: Text('Delete quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}