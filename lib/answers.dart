import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
   final VoidCallback  selectHandler;
   final  answerText;
  Answers(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return
       Padding(
         padding: const EdgeInsets.only(top: 10),
         child: Container(
          width: double.infinity,
          
          child: ElevatedButton(
             
            child: Text(
              answerText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
             onPressed: selectHandler,
          ),
         ),
       )
    ;
  }
}
