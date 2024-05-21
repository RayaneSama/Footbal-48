// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:iconsax/iconsax.dart';

class UpComingMatch extends StatelessWidget {
  final String homeLogo, homeTitle, awayLogo, awayTitle, date, time;
  final bool isFavorite;
  const UpComingMatch({
    super.key,
    required this.homeLogo,
    required this.homeTitle,
    required this.awayLogo,
    required this.awayTitle,
    required this.date,
    required this.time,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          width: double.infinity, // need to be fixed
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kbackgroundColor,
          ),
          child: Row(
            children: [
              Text(
                homeTitle,
                style: TextStyle(
                  fontSize: 14, //mmmm15
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset(
                    homeLogo,
                    height: 45,
                    width: 45,
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              const SizedBox(width: 5), //mmm10
              Column(
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
              const SizedBox(width: 5), //mmmm10
              Column(
                children: [
                  Image.asset(
                    awayLogo,
                    height: 45,
                    width: 45,
                  ),
                  const Text(
                    "Away",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              const Spacer(),
              Text(
                awayTitle,
                style: TextStyle(
                  fontSize: 14, //mmmm15
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: isFavorite ? kprimaryColor : Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        isFavorite
            ? const Positioned(
                top: 10,
                left: 10,
                child: Icon(
                  Iconsax.star5,
                  color: kprimaryColor,
                  size: 15,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
