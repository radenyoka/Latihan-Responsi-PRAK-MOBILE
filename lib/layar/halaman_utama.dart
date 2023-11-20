import 'package:flutter/material.dart';
import 'package:latihan_responsi/layar/blog_page.dart';
import 'package:latihan_responsi/layar/news_page.dart';
import 'package:latihan_responsi/layar/reports_page.dart';


class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Responsi'),
        backgroundColor: Color.fromARGB(255, 6, 45, 78),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          MenuCard(
            icon: Icons.book_online,
            title: 'News',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NewsPage();
                  },
                ),
              );
            },
            color: Color.fromARGB(255, 6, 45, 78),
          ),
          MenuCard(
            icon: Icons.web,
            title: 'Blog',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlogsPage();
                  },
                ),
              );
            },
            color: const Color.fromARGB(255, 121, 190, 247),
          ),
          MenuCard(
            icon: Icons.note,
            title: 'Reports',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ReportsPage();
                  },
                ),
              );
            },
            color: Color.fromARGB(255, 6, 45, 78),
          ),
        ],
      ),
    );
  }
}

class BantuanPage extends StatefulWidget {
  @override
  _BantuanPageState createState() => _BantuanPageState();
}

class _BantuanPageState extends State<BantuanPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Bantuan'),
        backgroundColor: Color.fromARGB(255, 6, 45, 78),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}


class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color color;

  MenuCard({
    required this.icon,
    required this.title,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: color,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15),
            Icon(
              icon,
              size: 50.0,
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 15),
            Text(
              'By: Raden Yoka Fawwaz/124210063',
              style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}