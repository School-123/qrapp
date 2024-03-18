import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:qr_app/profile.dart';
import 'package:qr_app/qr.dart';
import 'package:qr_app/registration.dart';
import 'package:http/http.dart' as http;

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

  TextEditingController rollno= TextEditingController();
  TextEditingController password=TextEditingController();

  void login()async{
    print('rollno');
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'rollno': rollno.text,
          'password':password.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data["message"]);

    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Qrpage(),
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
            'Login'
            ),
        SizedBox(
          height: 40,
          width: 18,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(controller: rollno,
            decoration: InputDecoration(hintText: 'enter your password',
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
          child: TextField(
            controller:password,decoration: InputDecoration(hintText: 'enter your password',
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
        ElevatedButton(onPressed: () {login();},style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child: Text('Login')),

        Text(
            textAlign: TextAlign.center,
            'dont have an account?,sign in'),

      ],
    ),
    );
  }
}




