import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/widgets/live_match_box.dart';
import 'package:football_app/widgets/upcoming_match.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.category), // les 4 carreaux
        ),
        title: const Row(
          children: [
            Spacer(),
            Text(
              // logo de l'app
              "F",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.sports_soccer,
              color: kprimaryColor,
            ),
            Icon(
              Icons.sports_soccer,
              color: kprimaryColor,
            ),
            Text(
              "tball ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "48",
              style: TextStyle(
                color: kprimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.notification), //icon de notification
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Live Match", // text view live match
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kbackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 20, color: Colors.grey.shade200),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/classememt.png",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 3),
                        const Text(
                          "Classememt", // boutton classement
                          style: TextStyle(
                            fontSize: 15, //mmm15
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 3),
                        const Icon(
                          CupertinoIcons.chevron_down,
                          size: 18,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView(
                padding: const EdgeInsets.only(left: 20),
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                children: const [
                  LiveMatchBox(
                    awayGoal: 0,
                    homeGoal: 2,
                    time: 83,
                    awayLogo: "assets/images/AR.AIN-TARIk.png",
                    homeLogo: "assets/images/RC-KALAA.png",
                    awayTitle: "AR.AinTarik",
                    homeTitle: "RC.Kalaa",
                    color: kboxColor,
                    textColors: Colors.white,
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/images/joueur photo 2.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft,
                      opacity: 0.3,
                    ),
                  ),
                  LiveMatchBox(
                    awayGoal: 3,
                    homeGoal: 0,
                    time: 65,
                    awayLogo: "assets/images/RMB.MATMAR.png",
                    homeLogo: "assets/images/CRB.OUARIZANE.png",
                    awayTitle: "RMB.Matmar",
                    homeTitle: "CRB.Ouarizan",
                    color: ksecondBoxColor,
                    textColors: Colors.black,
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/images/joueur photo 5.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft,
                      opacity: 0.1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Up-Coming Matches",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: kprimaryColor),
                    child: const Text("See all"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  UpComingMatch(
                    awayLogo: "assets/images/WB.OUED-RHIOU.png",
                    awayTitle: "WB.ORhiou",
                    homeLogo: "assets/images/RMB.MATMAR.png",
                    homeTitle: "RMB.Matmar",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: true,
                  ),
                  UpComingMatch(
                    awayLogo: "assets/images/AR .AMMI MOUSSA.png",
                    awayTitle: "AR.AmiMousa",
                    homeLogo: "assets/images/OM.RELIZANE.png",
                    homeTitle: "OM.Relizane",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingMatch(
                    awayLogo: "assets/images/MB.BELHACEL.png",
                    awayTitle: "MB.Belhacel",
                    homeLogo: "assets/images/J SIDI LAZREG.png",
                    homeTitle: "J.SidiLazreg",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingMatch(
                    awayLogo: "assets/images/CRB.HAMADNA.png",
                    awayTitle: "CRB.Hmadna",
                    homeLogo: "assets/images/CRB.OUARIZANE.png",
                    homeTitle: "CRB.Ouarizan",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
