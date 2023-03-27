import 'package:flutter/material.dart';
import 'package:flutter_application_1/kegiatan/tambah.dart';

class list extends StatelessWidget {
  const list({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: Center(
        child: SizedBox(width: 440,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  children: [
                    const Icon(Icons.list_alt),
                    const Padding(padding: EdgeInsets.only(right: 7)),
                    const Text(
                      'Kegiatan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 80)),
                    SizedBox(
                      width: 230,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Judul Kegiatan'),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),)
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Tambah()));
          },
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}