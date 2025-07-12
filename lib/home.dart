import 'package:flutter/material.dart';
import 'package:multi_screen_quote_app/model.dart';

class Home extends StatelessWidget {
  List<Quote> Quotes = [
    Quote(
      quote: "“If a book is well written i always find it too short.”",
      author: "Jane Austen",
    ),
    Quote(
      quote:
          "“You can discover more about a person in an hour of play than in a year of conversation.”",
      author: "Plato",
    ),
    Quote(
      quote:
          "“The desire to reach the stars is ambitious. The desire to reach hearts is wise and most possible.”",
      author: "Maya Angelou",
    ),
    Quote(
      quote:
          "“Miracles surround us at every turn, if we but sharpen our perceptions to them.”",
      author: "Willa Cather",
    ),
    Quote(
      quote: "“When someone shows you who they are, believe them the first time.”",
      author: "maya angelou",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
          title: Text('Quotes and Author', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
            itemCount: Quotes.length,
            itemBuilder: (context, index) {
              return GestureDetector(onTap: () {
                Navigator.pushNamed(context, "details page",arguments: Quotes[index]);
              },
                child: Container(
                  child: Card(color: Colors.white12,
                    child: Column(
                      children: [Align(child:
                        Text(Quotes[index].quote,style: TextStyle(color: Colors.red),),alignment: Alignment.topLeft,),
                        SizedBox(height: 20),
                        Align(child:
                        Text(Quotes[index].author,style: TextStyle(color: Colors.black),),alignment: Alignment.centerRight,
                        )],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
