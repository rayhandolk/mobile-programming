import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final jadwal = [
      {
        'hari': 'Senin',
        'mataKuliah': 'Sistem Penunjang Keputusan',
        'jam': '19:00 - 21:30',
      },
      {
        'hari': 'Selasa',
        'mataKuliah': 'Pemrograman Berorientasi Obyek',
        'jam': '19:00 - 21:30',
      },
      {
        'hari': 'Rabu',
        'mataKuliah': 'Rekayasa Perangkat Lunak',
        'jam': '19:00 - 21:30',
      },
      {
        'hari': 'Kamis',
        'mataKuliah': 'Jaringan Komputer',
        'jam': '19:00 - 21:30',
      },
      {
        'hari': 'Jumat',
        'mataKuliah': 'Mobile Programming',
        'jam': '19:00 - 21:30',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: jadwal.length,
      itemBuilder: (context, index) {
        final data = jadwal[index];

        return Card(
          elevation: 3,
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
            ),

            title: Text(
              data['mataKuliah']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            subtitle: Text(
              '${data['hari']} • ${data['jam']}',
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