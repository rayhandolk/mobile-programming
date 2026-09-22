import 'package:flutter/material.dart';

class TugasPage extends StatelessWidget {
  const TugasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tugas = [
      {
        'judul': 'Membuat UI Flutter',
        'mataKuliah': 'Mobile Programming',
        'status': 'Belum selesai',
      },
      {
        'judul': 'Analisis Metode SAW',
        'mataKuliah': 'Sistem Penunjang Keputusan',
        'status': 'Selesai',
      },
      {
        'judul': 'Membuat Class Diagram',
        'mataKuliah': 'Rekayasa Perangkat Lunak',
        'status': 'Belum selesai',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: tugas.length,
      itemBuilder: (context, index) {
        final data = tugas[index];

        final selesai = data['status'] == 'Selesai';

        return Card(
          elevation: 3,
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: Icon(
              selesai
                  ? Icons.check_circle
                  : Icons.assignment_outlined,
              color: selesai ? Colors.green : Colors.orange,
              size: 32,
            ),

            title: Text(
              data['judul']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            subtitle: Text(
              '${data['mataKuliah']} • ${data['status']}',
            ),
          ),
        );
      },
    );
  }
}