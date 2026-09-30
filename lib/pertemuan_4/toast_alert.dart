import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageToastAlert extends StatelessWidget {
  const PageToastAlert({super.key});

  void tampilkanToast() {
    Fluttertoast.showToast(
      msg: "Ini adalah pesan toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void tampilkanAlerts() {
    Fluttertoast.showToast(
      msg: "Ini adalah pesan alerts",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Toast'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: tampilkanToast,
              child: const Text('Tampilkan Toast'),
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: tampilkanAlerts,
              child: const Text('Tampilkan Alerts'),
            ),
          ],
        ),
      ),
    );
  }
}