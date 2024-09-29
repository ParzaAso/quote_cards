import 'package:flutter/material.dart';
import 'Quote.dart';

class CardTemp extends StatelessWidget {
  
   final Quote quoteHolder;
   const CardTemp({super.key,required this.quoteHolder});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width * 0.9,
       height: 300,
      child: Card (
        margin:const EdgeInsets.all(50),
        
      color:Colors.purple[200],
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children:[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(quoteHolder.text,
          style:const TextStyle(
            fontSize: 19,
          ),
          ),
        ),
          
      
        const  SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(quoteHolder.author,
          style:const TextStyle(
            fontSize: 19,
            
            
          ),
          ),
        ),    
      ],),
      
               
      ),
    );
  }
}