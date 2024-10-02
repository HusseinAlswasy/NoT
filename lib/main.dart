import 'package:flutter/material.dart';
import 'package:nat/screens/NotesView.dart';

void main() {
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
