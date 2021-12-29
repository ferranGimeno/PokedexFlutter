import 'package:flutter/material.dart';

class Register extends StatelessWidget{
  const Register({Key? key, required this.number}) : super(key: key);
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Dame' + number.toString()))
          ],
        ),
      ),
    );
  }
}