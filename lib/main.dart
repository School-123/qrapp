import 'package:flutter/material.dart';
import 'package:qr_app/registration.dart';

void main() {
  runApp(MaterialApp(
    home: QRApp(),
  ));
}

class QRApp extends StatefulWidget {
  const QRApp({Key? key}) : super(key: key);

  @override
  State<QRApp> createState() => _QRAppState();
}

class _QRAppState extends State<QRApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
            'Login'
            ),
        SizedBox(
          height: 40,
          width: 18,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(decoration: InputDecoration(hintText: 'enter your password',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 3, color: Colors.greenAccent),
              //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 18,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(decoration: InputDecoration(hintText: 'enter your password',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 3, color: Colors.greenAccent),
              //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
              ),

            ),
          ),

        SizedBox(
          height: 10,
          width: 18,
        ),
        ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context)=>registration()));},style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child: Text('Login')),

        Text(
            textAlign: TextAlign.center,
            'dont have an account?,sign in'),

      ],
    ),
    );
  }
}




