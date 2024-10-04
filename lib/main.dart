import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nat/screens/NotesView.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('note box');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Edu Australia VIC WA NT Hand Guides',
      ),
      home: const Notesview(),
    );
  }
}
