// ignore_for_file: file_names, avoid_print, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:football_app/components/breaking_news_card.dart';
import 'package:football_app/components/news_list_tile.dart';
import 'package:football_app/logic/models/news_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailsHomeScreen extends StatefulWidget {
  const DetailsHomeScreen({Key? key}) : super(key: key);

  @override
  State<DetailsHomeScreen> createState() => _DetailsHomeScreenState();
}

class _DetailsHomeScreenState extends State<DetailsHomeScreen> {
  List<NewsData> breakingNewsList = [];
  List<NewsData> recentNewsList = [];
  bool isLoading = true;
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    try {
      final response =
          await http.get(Uri.parse("http://192.168.1.37:3000/news"));
      print(response);
      if (response.statusCode == 200) {
        final List<dynamic> newsJson = json.decode(response.body);
        print(newsJson);
        setState(() {
          breakingNewsList =
              newsJson.map((data) => NewsData.fromJson(data)).toList();
          recentNewsList =
              breakingNewsList; // Assuming the same data for now, update accordingly
          isLoading = false;
          hasError = false;
        });
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print('Error fetching news: $e');
      setState(() {
        isLoading = false;
        hasError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "News",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : hasError
              ? Center(child: Text('Failed to load news'))
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Breaking News",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CarouselSlider.builder(
                          itemCount: breakingNewsList.length,
                          itemBuilder: (context, index, id) =>
                              BreakingNewsCard(breakingNewsList[index]),
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: true,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Text(
                          "Recent News",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Column(
                          children: recentNewsList
                              .map((e) => NewsListTile(e))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DetailsHomeScreen(),
  ));
}
