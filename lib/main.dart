import 'package:flutter/material.dart';

import 'list_vertikal.dart';
import 'list_horizontal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Tugas Pertemuan 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    "BERITA TERBARU"),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "PERTANDINGAN HARI INI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          //  ====== list view horizontal ========
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
                Listhorizontal(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                  'title',
                  'subtitle',
                ),
              ],
            ),
          ),

          //  ====== list view vertikal ========
          Expanded(
            child: ListView(
              children: <Widget>[
                Listvertikal(
                  "https://vid.alarabiya.net/images/2021/02/10/204486ae-ff75-46bd-915e-96568d21777f/204486ae-ff75-46bd-915e-96568d21777f_16x9_1200x676.jpg?width=1120&format=jpg",
                  "Pique Bilang Wasit untungkan Madrid, Koeman Tepok Jidat",
                  "Barcelona Feb 13, 2021",
                ),
                Listvertikal(
                  "https://asset.kompas.com/crops/qUxl3i8ANYkqVAZUV5BeSYxyBF8=/138x0:854x477/740x500/data/photo/2022/09/19/63277e62988b9.jpg",
                  "Jadwal Siaran Langsung Timnas Indonesia U-20 vs Vietnam di Kualifikasi Piala Asia U-20 2023: Laga Wajib Menang!",
                  "Indonesia Feb 14, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8528451e439b9803/63272bf24c449f32f39ce96d/GettyImages-1424896411.jpg",
                  "Berani Turunin Bocah 15 Tahun, Mikel Arteta Cuma Mengandalkan 'Feeling'",
                  "Maroco Feb 23, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltc16e5dcdce60ef9e/632788e7e98aee49abf70c56/pioli_milan_napoli.jpg?quality=80&format=pjpg&auto=webp&width=1000",
                  "AC Milan Dipecundang Napoli, Begini Alasan Stefano Pioli",
                  "Milan Feb 13, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blte118a16ca2d6eb78/6318b95423a56e3506fcbe4d/Carlo_Ancelotti_Karim_Benzema_2022-23.png?quality=80&format=pjpg&auto=webp&width=1000",
                  "Carlo Ancelotti: Real Madrid Aman Kok Tanpa Karim Benzema",
                  "Madrid Feb 15, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltd55b2adfaa1c8e18/628b49382ad71710e1dcc758/ALLEGRI_HD.jpg?quality=80&format=pjpg&auto=webp&width=1000",
                  "Mengenang Skuad Juventus Debut Massimiliano Allegri, Siapa Saja?",
                  "Juventus Feb 15, 2021",
                ),
                Listvertikal(
                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8c0c6ded4703d033/6324d84c6bf9dc38495610c7/goal---web_three-way-split-e9d56da6-49d9-44fb-89e4-0c2cfd756c0f.png?quality=80&format=pjpg&auto=webp&width=1000",
                  "FIFA 23: 15 Pemain Top Dari Ligue 1, Trio PSG Masuk Daftar Teratas",
                  "London Feb 16, 2021",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
