import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({super.key});

  @override
  State<GestureDetectorPage> createState() =>
      _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  String _teks = 'Sentuh Kotak Ini';
  Color _warna = Colors.grey;
  int _jumlah = 0;

  void _set(String teks, Color warna) {
    setState(() {
      _teks = teks;
      _warna = warna;
      _jumlah++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum P5 - Gesture Detector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _set('Tap', Colors.blue),
              onDoubleTap: () => _set('Double Tap', Colors.green),
              onLongPress: () => _set('Long Press', Colors.red),
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: _warna,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    _teks,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}