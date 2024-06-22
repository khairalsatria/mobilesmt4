import 'package:flutter/material.dart';
import 'package:mobilesmt4/crud_notes/screen_notes.dart';
import 'package:mobilesmt4/crud_pegawai/screen_pegawai.dart';
import 'package:mobilesmt4/jadwal_sepakbola/screen_sepakbola.dart';
import 'package:mobilesmt4/playlist_audio/screen_audio.dart';
import 'package:mobilesmt4/playlist_video/screen_video.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile - Khairal Satria - 2014',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        cardColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        cardColor: Colors.grey[800],
        scaffoldBackgroundColor: Colors.black,
      ),
      themeMode: ThemeMode.system, // Automatically switch between light and dark themes
      home: PageListAudio(), debugShowCheckedModeBanner: false,
    );
  }
}