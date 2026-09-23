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

            // Ketika ListTile diklik
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailJadwalPage(
                    hari: data['hari']!,
                    mataKuliah: data['mataKuliah']!,
                    jam: data['jam']!,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}


// ===============================
// HALAMAN DETAIL JADWAL
// ===============================

class DetailJadwalPage extends StatelessWidget {
  final String hari;
  final String mataKuliah;
  final String jam;

  const DetailJadwalPage({
    super.key,
    required this.hari,
    required this.mataKuliah,
    required this.jam,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Jadwal'),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Icon(
              Icons.calendar_month,
              size: 70,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            Text(
              mataKuliah,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            ListTile(
              leading: const Icon(
                Icons.today,
                color: Colors.blue,
              ),
              title: const Text('Hari'),
              subtitle: Text(hari),
            ),

            ListTile(
              leading: const Icon(
                Icons.access_time,
                color: Colors.blue,
              ),
              title: const Text('Jam'),
              subtitle: Text(jam),
            ),

            const SizedBox(height: 20),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.blue,
                    ),

                    SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        'Silakan mengikuti perkuliahan sesuai jadwal yang telah ditentukan.',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}