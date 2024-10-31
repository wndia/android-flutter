import 'package:flutter/material.dart';
import 'package:perpus/models/book_model.dart';

class BookController with ChangeNotifier {
  final List<Book> _books = [
    Book(
      id: '1',
      title: '3726 MDPL',
      description:
          'Selain disibukkan dengan skripsi, Rangga, Ketua Panitia OSPEK Fakultas Kehutanan 2023 itu juga menyibukkan dirinya dengan mengagumi Andini. Seorang mahasiswi yang bercita-cita bisa mendaki Gunung Rinjani, sekaligus adik tingkat yang ia sebut sebagai manusia favorit. Andini dikelilingi oleh banyak cinta, banyak manusia yang ingin dengannya, terutama Rangga dengan seluruh kesan istimewanya. Namun, dalam dirinya, ada manusia dulu yang entah masih jadi pemenang atau definisi lain dari itu.',
      stock: 50,
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHVStRwIIKmNoatrxgv80G_yQLpu9kghQT-g&s",
      publisher: 'Romancious',
      author: 'Nurwina Sari',
    ),
    Book(
      id: '2',
      title: 'Malioboro at midnight',
      description:
          'Tengah malam bagi kebanyakan orang adalah waktu terbaik untuk beristirahat dan tidur lelap. Tapi untuk Serana Nighita, itu adalah waktu untuk menangisi hidup dan meratapi hubungannya dengan sang penyanyi terkenal, Jan Ichard. Popularitas membawa lelaki itu jauh darinya, Ichard di Jakarta, meninggalkan Sera di Jogja.Bagi Sera, tengah malam selalu menakutkan.Namun, semua berubah setelah Malioboro Hartigan tidak sengaja mendobrak pintu kamarnya pada sebuah malam. Malio datang dan menawarkan pertemanan agar Sera tidak sendiri, agar Sera bisa berbagi sedihnya.Lantas bagaimana dengan hubungan Sera dan Jan Ichard yang semakin rumit? Dan benarkah tanpa sadar, Malio sudah menjadi Midnight terbaik Sera?',
      stock: 45,
      imageUrl:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1680744714l/125467698.jpg',
      publisher: 'Kawah Media',
      author: 'Skysphire',
    ),
    Book(
      id: '3',
      title: 'Hello, Celo',
      description:
          'Jatuh cinta lagi? Hmm, sepertinya itu tak ada lagi dalam kamus Helga. Kegagalannya dalam urusan cinta dan selalu disakiti oleh cowok, membuatnya sudah merasa cukup! Untuk apa mengulangi semuanya lagi dari awal? Sebagai seorang penulis, Helga selalu mengabadikan hal yang berkesan di dalam hidupnya dalam bentuk buku. Dan di tengah proses penulisan buku keenamnya, ia malah dipertemukan dengan seorang ‘buaya’ tampan bernama Cello. Cello yang awalnya ingin mendekati Una – yaitu seorang gadis yang populer di kampusnya, justru terjebak dan malah semakin dekat dengan Helga yang aneh dan ajaib karena sering berpikir dan bersikap terlalu random. Namun, siapa sangka Cello malah semakin penasaran dengan gadis yang hatinya sudah membeku seperti itu? Baginya, Helga merupakan sosok yang ‘unik’ dan belum pernah ia jumpai sebelumnya. Mampukah Cello, akhirnya menaklukan hati Helga?',
      stock: 40,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1654768008i/61254911.jpg',
      publisher: 'Kawah Media',
      author: 'Nadia Ristivani',
    ),
    Book(
      id: '4',
      title: 'Jiro',
      description:
          'Jiro punya keinginan setelah usianya semakin dewasa. Pertama jago masak, kedua masuk kedokteran, ketiga menjadi master of flirting. Keinginannya yang ketiga cukup sulit untuk diwujudkan karena Jiro tidak pernah dekat dengan gadis mana pun. Namun, Leon, si Master of Love sekaligus sahabat kecilnya, ternyata sudah menyiapkan sebuah buku tentang bagaimana cara untuk mendapatkan kekasih. Buku itu berjudul How to Romance 101, dan memiliki Namun, akankah semudah itu Jiro melakukan 5 tahap yang ada? Atau justru akan ada kejadian tak terduga yang terjadi? 5 tahap yang akan menuntun Jiro dekat dengan gadis yang dia sukai.',
      stock: 35,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8a609fap7h5UvWjgUp7U4kwlqPWcnaFttpg&s',
      publisher: 'Loveable',
      author: 'Loka Hati',
    ),
  ];
  List<Book> get books => _books;

  void addBook(Book book) {
    _books.add(book);
    notifyListeners();
  }

  void removeBook(String id) {
    _books.removeWhere((book) => book.id == id);
    notifyListeners();
  }
}
