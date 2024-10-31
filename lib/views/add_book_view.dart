import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:perpus/models/book_model.dart';
import 'package:perpus/controllers/book_controller.dart';

class AddBookView extends StatefulWidget {   
  @override
  _AddBookViewState createState() => _AddBookViewState();
}

class _AddBookViewState extends State<AddBookView> {
  final _formKey = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _stockController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _publisherController = TextEditingController();
  final _authorController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _stockController.dispose();
    _imageUrlController.dispose();
    _publisherController.dispose();
    _authorController.dispose();
    super.dispose();
  }

  void _saveBook() {
    if (_formKey.currentState!.validate()) {
      final newBook = Book(
        id: _idController.text,
        title: _titleController.text,
        description: _descriptionController.text,
        stock: int.parse(_stockController.text),
        imageUrl: _imageUrlController.text,
        publisher: _publisherController.text,
        author: _authorController.text,
      );

      Provider.of<BookController>(context, listen: false).addBook(newBook);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Book'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'ID Buku'),
                validator: (value) =>
                    value!.isEmpty ? 'ID tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Judul Buku'),
                validator: (value) =>
                    value!.isEmpty ? 'Judul tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Deskripsi Buku'),
                validator: (value) =>
                    value!.isEmpty ? 'Deskripsi tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _stockController,
                decoration: InputDecoration(labelText: 'Stok Buku'),
                validator: (value) =>
                    value!.isEmpty ? 'Stok tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _imageUrlController,
                decoration: InputDecoration(labelText: 'URL Gambar'),
                validator: (value) =>
                    value!.isEmpty ? 'URL Gambar tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _publisherController,
                decoration: InputDecoration(labelText: 'Penerbit Buku'),
                validator: (value) =>
                    value!.isEmpty ? 'Penerbit tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _authorController,
                decoration: InputDecoration(labelText: 'Pengarang Buku'),
                validator: (value) =>
                    value!.isEmpty ? 'Pengarang tidak boleh kosong' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveBook,
                child: Text('Simpan Buku'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
