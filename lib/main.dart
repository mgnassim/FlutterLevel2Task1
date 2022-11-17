import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterLevel2Task1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'FlutterLevel2Task1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Place> images = [
    Place(placeName: "Alaska Denali", pathOfImage: "images/alaska_denali.jpeg"),
    Place(placeName: "Amsterdam Dam", pathOfImage: "images/amsterdam_dam.jpeg"),
    Place(
        placeName: "Amsterdam Weesperplein",
        pathOfImage: "images/amsterdam_weesperplein.jpeg"),
    Place(
        placeName: "Barcelona Sagrada Familia",
        pathOfImage: "images/barcelona_sagrada_familia.jpeg"),
    Place(
        placeName: "Beijing Verboden Stad",
        pathOfImage: "images/beijing_verboden_stad.jpeg"),
    Place(
        placeName: "Berlijn Reichstag",
        pathOfImage: "images/berlijn_reichstag.jpeg"),
    Place(
        placeName: "Brussel Manneken Pis",
        pathOfImage: "images/brussel_manneken_pis.jpeg"),
    Place(
        placeName: "Den Haag Binnenhof",
        pathOfImage: "images/den_haag_binnenhof.jpeg"),
    Place(
        placeName: "Groningen Martinitoren",
        pathOfImage: "images/groningen_martinitoren.jpeg"),
    Place(placeName: "Hawaii Honolulu", pathOfImage: "images/hawaii.jpeg"),
    Place(placeName: "Helsinki", pathOfImage: "images/helsinki.jpeg"),
    Place(
        placeName: "Kaapstad Tafelberg",
        pathOfImage: "images/kaapstad_tafelberg.jpeg"),
    Place(placeName: "Kopenhagen", pathOfImage: "images/kopenhagen.jpeg"),
    Place(
        placeName: "Londen Tower Bridge",
        pathOfImage: "images/london_tower_bridge.jpeg"),
    Place(
        placeName: "Maastricht Vrijthof",
        pathOfImage: "images/maastricht_vrijthof.jpeg"),
    Place(
        placeName: "Moskou Rode Plein",
        pathOfImage: "images/moskou_rode_plein.jpeg"),
    Place(
        placeName: "New York Vrijheidsbeeld",
        pathOfImage: "images/new_york_vrijheidsbeeld.jpeg"),
    Place(placeName: "Oslo", pathOfImage: "images/oslo.jpeg"),
    Place(
        placeName: "Ottawa Parliament Hill",
        pathOfImage: "images/ottawa_parliament_hill.jpeg"),
    Place(
        placeName: "Parijs Eiffeltoren",
        pathOfImage: "images/parijs_eiffeltoren.jpeg"),
    Place(placeName: "Pompeii", pathOfImage: "images/pompeii.jpeg"),
    Place(
        placeName: "Rio de Janeiro Copacabana",
        pathOfImage: "images/rio_de_janeiro_copacabana.jpeg"),
    Place(
        placeName: "Rome Colosseum", pathOfImage: "images/rome_colosseum.jpeg"),
    Place(
        placeName: "Rotterdam Euromast",
        pathOfImage: "images/rotterdam_euromast.jpeg"),
    Place(
        placeName: "San Francisco Golden Gate",
        pathOfImage: "images/san_francisco_golden_gate.jpeg"),
    Place(placeName: "Stockholm", pathOfImage: "images/stockholm.jpeg"),
    Place(placeName: "Sydney Opera", pathOfImage: "images/sydney_opera.jpeg"),
    Place(placeName: "Utrecht Dom", pathOfImage: "images/utrecht_dom.jpeg"),
    Place(
        placeName: "Washington White House",
        pathOfImage: "images/washington_white_house.jpeg"),
    Place(
        placeName: "Yellowstone Old Faithful",
        pathOfImage: "images/yellowstone_old_faithful.jpeg"),
    Place(
        placeName: "Yosemite Half Dome",
        pathOfImage: "images/yosemite_half_dome.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Column(
                children: [
                  Expanded(child: Image.asset(images[index].pathOfImage, fit: BoxFit.fill)),
                  Text(images[index].placeName),
                ],
            );
          },
        ));
  }
}

class Place {
  String placeName;
  String pathOfImage;

  Place({
    required this.placeName,
    required this.pathOfImage,
  });
}
