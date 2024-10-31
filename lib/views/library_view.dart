import 'add_book_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:perpus/widgets/book_list_item.dart';
import 'package:perpus/controllers/book_controller.dart';

class LibraryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perpustakaan',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 186, 79, 115),
                Color.fromARGB(255, 250, 112, 154),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Consumer<BookController>(
        builder: (context, bookController, child) {
          if (bookController.books.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.library_books_outlined,
                      size: 100, color: Colors.grey[400]),
                  SizedBox(height: 20),
                  Text(
                    'Tidak ada buku di perpustakaan.',
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tambahkan buku dengan menekan tombol merah',
                    style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                  ),
                ],
              ),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            itemCount: bookController.books.length,
            itemBuilder: (context, index) {
              final book = bookController.books[index];
              return BookListItem(book: book);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 241, 85, 160),
        tooltip: 'Tambah Buku Baru',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddBookView(),
            ),
          ).then((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Buku berhasil ditambahkan!')),
            );
          });
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
