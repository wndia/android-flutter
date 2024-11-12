import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KAI Access',
      theme: ThemeData(
        primaryColor: Color(0xFF4A2C7B),
      ),
      home: KAIHomePage(),
    );
  }
}

class KAIHomePage extends StatefulWidget {
  @override
  _KAIHomePageState createState() => _KAIHomePageState();
}

class _KAIHomePageState extends State<KAIHomePage> {
  int _selectedIndex = 0;
  String _hoveredIcon = "";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6A82FB),
                Color(0xFF4A2C7B),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Sore',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(height: 6),
            Text(
              'SOMEONE',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.email, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://static.vecteezy.com/system/resources/previews/013/777/976/original/fast-train-icon-illustration-design-vector.jpg',
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KAI PAY',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rp 0',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Icon(
                                  Icons.workspace_premium,
                                  color: Color.fromARGB(188, 209, 143, 43),
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '0 RailPoin',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        _featureIcon(Icons.qr_code, "Scan"),
                        SizedBox(width: 8),
                        _featureIcon(Icons.add_circle, "Top Up"),
                        SizedBox(width: 8),
                        _featureIcon(Icons.history, "Riwayat"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _menuIcon(Icons.train, "Antar Kota", () {
                    _showTicketBookingDialog(context, "Antar Kota");
                  }),
                  _menuIcon(Icons.train, "Lokal", () {
                    _showTicketBookingDialog(context, "Lokal");
                  }),
                  _menuIcon(Icons.train, "Commuter Line"),
                  _menuIcon(Icons.train, "LRT"),
                  _menuIcon(Icons.airplane_ticket, "Bandara"),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _menuIcon(Icons.hotel, "Hotel"),
                  _menuIcon(Icons.card_membership, "Kartu Multi trip"),
                  _menuIcon(Icons.card_travel, "KAI Logistik"),
                  _menuIcon(Icons.phone_android, "Pulsa"),
                  _menuIcon(Icons.energy_savings_leaf_rounded, "PLN"),
                ],
              ),
              SizedBox(height: 24),
              Container(
                width: 1000,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4A2C7B),
                      Color(0xFF6A82FB),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/6556/6556157.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TRIP Planner",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Buat perencanaan terbaik untuk perjalananmu.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                      child: Text("BUAT"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              SizedBox(height: 24),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Layanan Tambahan Untuk",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "Perjalanan Kamu",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _menuIcon(Icons.fastfood, "RailFood"),
                  _menuIcon(Icons.local_taxi, "Taksi"),
                  _menuIcon(Icons.directions_bus, "Bus"),
                  _menuIcon(Icons.apartment, "Hotel"),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF4A2C7B),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'Kereta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'Tiket Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
      ),
    );
  }

  Widget _featureIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Color(0xFF4A2C7B), size: 28),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    );
  }

  Widget _menuIcon(IconData icon, String label, [VoidCallback? onTap]) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _hoveredIcon = label;
          });
        },
        onExit: (_) {
          setState(() {
            _hoveredIcon = "";
          });
        },
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor:
                  _hoveredIcon == label ? Colors.white : Color(0xFF4A2C7B),
              radius: 24,
              child: Icon(icon,
                  color:
                      _hoveredIcon == label ? Color(0xFF6A82FB) : Colors.white,
                  size: 24),
            ),
            SizedBox(height: 8),
            Container(
              width: 60,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showTicketBookingDialog(BuildContext context, String route) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pemesanan Tiket - $route'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama Lengkap'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Dari Mana'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Mau Kemana'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Tanggal Perjalanan'),
                keyboardType: TextInputType.datetime,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Jumlah Tiket'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Pesan'),
            ),
          ],
        );
      },
    );
  }
}
