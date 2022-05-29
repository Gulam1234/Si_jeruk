import 'package:flutter/material.dart';
import 'package:skripsi_jeruk_android/custom.dart';
import 'dart:async';

import 'package:skripsi_jeruk_android/home.dart';

class Tentang extends StatefulWidget {
  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hijaumuda,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        backgroundColor: const Color(0xffC5FF4A),
        title: const Text(
          "Tentang",
          style: TextStyle(color: Colors.black, fontFamily: 'PortLligatSlab'),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70.0,
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "PAKAR  JERUK",
                        style: TextStyle(
                            fontFamily: 'PortLligatSlab',
                            color: Colors.green,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      height: 25,
                      color: Colors.black,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        "Sistem Pakar diagnosis hama dan penyakit tanaman jeruk ini menggunakan metode Certainty Factor. Sistem pakar ini dibuat dengan tujuan untuk memudahkan para petani dalam mendiagnosa hama dan penyakit pada tanaman jeruk serta memberikan informasi tentang cara pengendaliannya.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'PortLligatSlab',
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    // const SizedBox(height: 90),
                    // Text(
                    //   "Oleh:",
                    //   style: TextStyle(
                    //     fontFamily: 'PortLligatSlab',
                    //     color: lightgreen,
                    //     fontSize: 20.0,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // Text("Gulam Mubarik Ahmad",
                    //     style: TextStyle(
                    //         fontFamily: 'PortLligatSlab',
                    //         color: lightgreen,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold)),
                    // Text("E41180359",
                    //     style: TextStyle(
                    //         fontFamily: 'PortLligatSlab',
                    //         color: lightgreen,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold)),
                    // Text("Teknik Informatika",
                    //     style: TextStyle(
                    //         fontFamily: 'PortLligatSlab',
                    //         color: lightgreen,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold)),
                    // Text("Teknologi Informasi",
                    //     style: TextStyle(
                    //         fontFamily: 'PortLligatSlab',
                    //         color: lightgreen,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold)),
                    // Text("Politeknik Negeri Jember",
                    //     style: TextStyle(
                    //         fontFamily: 'PortLligatSlab',
                    //         color: lightgreen,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
