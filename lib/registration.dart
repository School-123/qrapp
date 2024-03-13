

import 'package:flutter/material.dart';
import 'package:qr_app/qr.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
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
              'Registration'),
          SizedBox(
            height: 40,
            width: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'enter your name',
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'enter your  roll no',
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'enter your email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'enter your password',
              ),
            ),
          ),
      SizedBox(
        height: 10,
        width: 18,
      ),
      ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context)=>Qrpage()));},style: ElevatedButton.styleFrom(primary: Colors.green), child: Text('Login')),

        ],
      ),
    );
  }
}
