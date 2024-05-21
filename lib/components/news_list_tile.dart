// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:football_app/logic/models/news_model.dart';
import '../screens/details_screen.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile(this.data, {Key? key}) : super(key: key);
  NewsData data;

  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
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
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.all(12.0),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Hero(
                tag: "${widget.data.titre_art}",
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: widget.data.image_art != null &&
                              widget.data.image_art!.isNotEmpty
                          ? NetworkImage(
                              "http://192.168.1.37:3000/images/${widget.data.image_art!}")
                          : AssetImage('assets/default_image.jpg')
                              as ImageProvider,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Flexible(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.titre_art ?? 'No title available',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    widget.data.description_art ?? 'No content available',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.white54,
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
