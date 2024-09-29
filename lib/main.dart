//import 'dart:collection';

// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'Quote.dart';
import 'card_Temp.dart';

void main() {
  runApp(  const MaterialApp(
    home: QuoteCard() ,
  )
  
  
  
  );
}

class QuoteCard extends StatefulWidget {
  const QuoteCard({super.key});

  @override
  State<QuoteCard> createState() => QuoteCardState();
}

class QuoteCardState extends State<QuoteCard> {

  List<Quote> quotes = [
  Quote(text: 'The only way to do great work is to love what you do.', author: 'Steve Jobs'),
  Quote(text: 'Keep your face always toward the sunshine—and shadows will fall behind you.', author: 'Walt Whitman'),
  Quote(text: 'Believe you can and you\'re halfway there.', author: 'Theodore Roosevelt'),
  Quote(text: 'Success is not the key to happiness. Happiness is the key to success.', author: 'Albert Schweitzer'),
  Quote(text: 'The best way to predict the future is to create it.', author: 'Peter Drucker'),
  Quote(text: 'Act as if what you do makes a difference. It does.', author: 'William James'),
  Quote(text: 'Start where you are. Use what you have. Do what you can.', author: 'Arthur Ashe'),
  Quote(text: 'Happiness is not something ready made. It comes from your own actions.', author: 'Dalai Lama'),
  Quote(text: 'What lies behind us and what lies before us are tiny matters compared to what lies within us.', author: 'Ralph Waldo Emerson'),
  Quote(text: 'You are never too old to set another goal or to dream a new dream.', author: 'C.S. Lewis'),
];
  
  late Quote selectedQuote;

    @override
   void initState() {
    super.initState();
    // Select an initial random quote
    selectedQuote = quotes[Random().nextInt(quotes.length)];
  }
  
  @override
  Widget build(BuildContext context) 
  
  {
    
    return  Scaffold(
     appBar: AppBar (
      title: Text("Quotes of the day",
      style: TextStyle(
        color:Colors.purple[400],
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      )
      ),
      backgroundColor: Colors.purple[200],
      centerTitle: true,
      elevation: 0.0,

     ),
      
     body: Center(
       child: Column (
        children: [
        
           CardTemp(quoteHolder: selectedQuote),
           FloatingActionButton(
                onPressed: ()
                {
                  setState(() {
                    selectedQuote = quotes[Random().nextInt(quotes.length)];
                  });
                },
                 
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),  
                 //child: const Text("change quotes"),
                 child: Icon (Icons.arrow_right_alt,color: Colors.white,size:35),
                 
              ), 
          
        ],
        ),
     )
          
        //  CardTemp(),
        
      //  FloatingActionButton(onPressed: (){},
      //   child: const Text("text"),
      //    ),  


      
       );
     


     
        

        
        
      

  
  }
}

