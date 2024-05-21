import 'package:flutter/material.dart';
import 'package:football_app/widgets/categories.dart';
import 'package:football_app/widgets/calender_Match.dart';

class CalenderHomeScreen extends StatefulWidget {
  const CalenderHomeScreen({Key? key}) : super(key: key);

  @override
  State<CalenderHomeScreen> createState() => _CalenderHomeScreenState();
}

class _CalenderHomeScreenState extends State<CalenderHomeScreen> {
   String currentCat = "Senior";
   

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      //the Appbar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Calender",
          style: TextStyle(color: Colors.orange),
        ),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.notifications_outlined,
        //         color: Colors.black,
        //       ))
        // ],
      ),
     body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1),//mmm16
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
                 const SizedBox(height: 20),
                 Categories(currentCat: currentCat),
                 const SizedBox(height: 20), // Ajoutez un espace ici
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),//mmmm20
                child: ListView( 
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  calenderMatch(
                    awayLogo: "assets/images/WB.OUED-RHIOU.png",
                    awayTitle: "WB.ORhiou",
                    homeLogo: "assets/images/RMB.MATMAR.png",
                    homeTitle: "RMB.Matmar",
                    date: "30 Dec",
                    time: "06:30",
                    week: "week 1",
                    isFavorite: true,
                  ),
                  calenderMatch(
                    awayLogo: "assets/images/AR .AMMI MOUSSA.png",
                    awayTitle: "AR.AmiMousa",
                    homeLogo: "assets/images/OM.RELIZANE.png",
                    homeTitle: "OM.Relizane",
                    date: "30 Dec",
                    time: "06:30",
                    week: "week 2",
                    isFavorite: false,
                  ),
                  calenderMatch(
                    awayLogo: "assets/images/MB.BELHACEL.png",
                    awayTitle: "MB.Belhacel",
                    homeLogo: "assets/images/J SIDI LAZREG.png",
                    homeTitle: "J.SidiLazreg",
                    date: "30 Dec",
                    time: "06:30",
                    week: "week 3",
                    isFavorite: false,
                  ),
                  calenderMatch(
                    awayLogo: "assets/images/CRB.HAMADNA.png",
                    awayTitle: "CRB.Hmadna",
                    homeLogo: "assets/images/CRB.OUARIZANE.png",
                    homeTitle: "CRB.Ouarizan",
                    date: "30 Dec",
                    time: "06:30",
                    week: "week 4",
                    isFavorite: false,
                  ),
                 ],
                ),
              ),
            ],
            
          ),
        ), 
      ),
    );
    return scaffold;
    
  }
}
