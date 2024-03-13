import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrpage extends StatefulWidget {
  const Qrpage({super.key});

  @override
  State<Qrpage> createState() => _QrpageState();
}

class _QrpageState extends State<Qrpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_pin,
              size: 130,
              color: Colors.white,
            ),
            SizedBox(
              height: 24,
            ),
            QrImage(data: '1234567890',
              version: QrVersions.auto,
              size: 200.0,),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text('Scan'))
          ],
        ));
  }
}
