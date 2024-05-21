// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:football_app/logic/models/news_model.dart';
import '../screens/details_screen.dart';

class BreakingNewsCard extends StatefulWidget {
  BreakingNewsCard(this.data, {Key? key}) : super(key: key);
  NewsData data;

  @override
  State<BreakingNewsCard> createState() => _BreakingNewsCardState();
}

class _BreakingNewsCardState extends State<BreakingNewsCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(widget.data),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: widget.data.image_art != null &&
                    widget.data.image_art!.isNotEmpty
                ? NetworkImage(
                    "http://192.168.1.37:3000/images/${widget.data.image_art!}")
                : AssetImage('assets/default_image.jpg') as ImageProvider,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.titre_art ?? 'No title available',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                widget.data.auteur_art ?? 'Unknown author',
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
