import 'package:flutter/material.dart';
import 'package:mobilespt/Register.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page') ,

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: 150.0,
                width: 190.0,
                padding: EdgeInsets.only(top:60),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)
                ),
                child:Center(
                    child:Image.asset('assets/images/pokedeex.png')
                )
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter valid mail id'
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15,bottom: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.red,borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: (){
                  //login action
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20),
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register(number: 5)));
                  },
                  child: const Text('New User? Register.'),
                )
            ),
          ],
        ),
      ),
    );
  }
}