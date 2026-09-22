import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      {
        'nama': 'Rayhan Aditya Saputra',
        'role': 'Mahasiswa',
      },
      {
        'nama': 'Budi Perjaka',
        'role': 'Mahasiswa',
      },
      {
        'nama': 'Kilat Abg',
        'role': 'Mahasiswa',
      },
      {
        'nama': 'Dimas Anjay',
        'role': 'Mahasiswa',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return Card(
          elevation: 2,
          margin: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),

            title: Text(
              user['nama']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            subtitle: Text(
              user['role']!,
            ),

            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
        );
      },
    );
  }
}