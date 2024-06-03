import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/pages/detail_page.dart';

class GalleryCard extends StatelessWidget {
  final String title;
  final String location;
  final double rating;

  GalleryCard(
      {required this.title, required this.location, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'lib/assets/images/Galeri.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: GoogleFonts.lato(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(height: 10.0),
            Text(
              location,
              style: GoogleFonts.lato(fontSize: 16.0, color: Colors.black54),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20.0),
                SizedBox(width: 5.0),
                Text(
                  '$rating',
                  style:
                      GoogleFonts.lato(fontSize: 16.0, color: Colors.black54),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: title,
                      location: location,
                      rating: rating,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('LIHAT LEBIH', style: GoogleFonts.lato()),
            ),
          ],
        ),
      ),
    );
  }
}
