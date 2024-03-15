import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal),
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('img/h.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Manu Manual'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: '46789453271',
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'manu manuel@gmail.com',
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 18,
          ),
        ],
      ),
    );
  }
}
