import 'package:flutter/material.dart';

import 'pertemuan_5/gesture_detector.dart';

import 'beranda.dart';
import 'jadwal.dart';
import 'tugas.dart';
import 'cari.dart';
import 'profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 2',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = [
      BerandaPage(
        onLihatTugas: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      ),
      const JadwalPage(),
      const TugasPage(),
      const CariPage(),
      const ProfilPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 2'),
        backgroundColor: Colors.blue,

        // Tombol untuk membuka Gesture Detector
        actions: [
          IconButton(
            icon: const Icon(Icons.touch_app),
            tooltip: 'Gesture Detector',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GestureDetectorPage(),
                ),
              );
            },
          ),
        ],
      ),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Jadwal',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Tugas',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}