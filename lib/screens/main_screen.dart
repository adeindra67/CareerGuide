import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/home/views/homescreen.dart';
import 'package:shop/screens/minat_bakat/views/minat_bakat_screen.dart';
import 'package:shop/screens/pembelian/views/pembelian_screen.dart';
import 'package:shop/screens/ruang_diskusi/views/ruang_diskusi_screen.dart';
import 'package:shop/screens/profil/views/profil_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MinatBakatScreen(),
    PembelianScreen(),
    RuangDiskusiScreen(),
    ProfilScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Minat Bakat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pembelian',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'Ruang Diskusi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey, // Warna ikon tidak dipilih
        onTap: _onItemTapped,
      ),
    );
  }
}
