import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get testResult{
    String resultText;
    if( totalScore <= 15){
        resultText = " Your Are Awesome And Innocent";
    }
    else if (totalScore <= 17){
resultText = " Pretty Likeable ";
    }
    else if (totalScore <= 21){
resultText = "You Are ... Strange..!!";
    }
    else{
resultText = " Ah! You Are Bad!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(testResult ,
                style: TextStyle( fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
                FlatButton(onPressed: resetHandler, 
                child: Text("Restart Quiz" ,
                style: TextStyle( fontSize: 36,
                 fontWeight: FontWeight.bold,
                 color: Colors.blue), ) ),
              
              ],
              
            ),
          
          
        );
  }
}