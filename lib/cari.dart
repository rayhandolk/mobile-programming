import 'package:flutter/material.dart';

class CariPage extends StatefulWidget {
  const CariPage({super.key});

  @override
  State<CariPage> createState() => _CariPageState();
}

class _CariPageState extends State<CariPage> {
  final TextEditingController _controller = TextEditingController();

  final List<String> data = [
    'Mobile Programming',
    'Sistem Penunjang Keputusan',
    'Rekayasa Perangkat Lunak',
    'Jaringan Komputer',
    'Pemrograman Berorientasi Obyek',
  ];

  List<String> hasilPencarian = [];

  @override
  void initState() {
    super.initState();
    hasilPencarian = data;
  }

  void cariData(String keyword) {
    setState(() {
      hasilPencarian = data
          .where(
            (item) => item.toLowerCase().contains(
              keyword.toLowerCase(),
            ),
          )
          .toList();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            onChanged: cariData,
            decoration: InputDecoration(
              hintText: 'Cari mata kuliah...',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                  cariData('');
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Expanded(
            child: ListView.builder(
              itemCount: hasilPencarian.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: const Icon(
                      Icons.menu_book,
                      color: Colors.blue,
                    ),
                    title: Text(
                      hasilPencarian[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}