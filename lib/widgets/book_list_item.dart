import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:perpus/models/book_model.dart';
import 'package:perpus/controllers/book_controller.dart';

class BookListItem extends StatelessWidget {
  final Book book;

  BookListItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        book.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deskripsi:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(book.description),
                          SizedBox(height: 12),
                          Text(
                            "Penerbit: ${book.publisher}",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text("Tutup"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text(
                            "Hapus",
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Provider.of<BookController>(context, listen: false)
                                .removeBook(book.id);
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('${book.title} telah dihapus')),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  width: 100, // Lebar gambar
                  height: 150, // Tinggi gambar
                  child: Image.network(
                    book.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Center(child: Icon(Icons.broken_image, size: 50)),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16), // Spasi antara gambar dan deskripsi
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'By ${book.author}',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Stock: ${book.stock}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 148, 42, 33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
