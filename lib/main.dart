import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:perpus/views/library_view.dart';
import 'package:perpus/controllers/book_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookController(),
      child: MaterialApp(
        title: 'Library App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LibraryView(),
      ),
    );
  }
}
