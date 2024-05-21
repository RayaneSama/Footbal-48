// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:football_app/logic/models/news_model.dart';

class DetailsScreen extends StatelessWidget {
  final NewsData data;

  DetailsScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.titre_art ?? 'News Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            data.image_art != null
                ? Image.network(
                    "http://192.168.1.37:3000/images/${data.image_art!}")
                : Image.asset('assets/default_image.jpg'),
            const SizedBox(height: 16),
            Text(
              data.titre_art ?? 'No title available',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              data.description_art ?? 'No content available',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              data.auteur_art ?? 'Unknown author',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
