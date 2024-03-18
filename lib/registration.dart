import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_app/qr.dart';
import 'package:http/http.dart' as http;

import 'main.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void reg() async {


    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'name': 'name.text',
          'roll': 'roll.txt',
          'email': 'email.txt',
          'password':'password.txt',
        }));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data["message"]);

    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QRApp(),
          ));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content:(data["message"])));}
    }



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
              controller: name,
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
              controller: rollno,
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
              controller: email,
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
              controller: password,
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
          ElevatedButton(
              onPressed: () {
                reg();
                //   Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => Qrpage()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Login')),
        ],
      ),
    );
  }
}

