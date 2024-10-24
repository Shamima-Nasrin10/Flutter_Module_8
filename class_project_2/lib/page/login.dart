import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password)),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                String em=email.text;
                String pass=password.text;
                print('Email:$em, Password:$pass');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey, // Text and icon color
              ),
              child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
