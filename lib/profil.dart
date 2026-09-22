import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),

          const CircleAvatar(
            radius: 55,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              size: 65,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Rayhan Aditya Saputra',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            '241011750110',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 24),

          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Informasi Akademik',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Divider(),

                  ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.blue,
                    ),
                    title: Text('Program Studi'),
                    subtitle: Text('Sistem Informasi'),
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.business,
                      color: Colors.blue,
                    ),
                    title: Text('Universitas'),
                    subtitle: Text(
                      'Universitas Pamulang',
                    ),
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.class_,
                      color: Colors.blue,
                    ),
                    title: Text('Semester'),
                    subtitle: Text('Semester 4'),
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.work,
                      color: Colors.blue,
                    ),
                    title: Text('Keahlian'),
                    subtitle: Text(
                      'Graphic Design / Software Development',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}