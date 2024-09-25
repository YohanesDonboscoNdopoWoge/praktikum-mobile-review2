import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    final titles = ['Bike', 'Boat', 'Bus'];
    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus
];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
          backgroundColor: Colors.deepOrange[300],
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, nomor) {
              return Card(
                  child: ListTile(
                leading: CircleAvatar(
                  // icons[nomor],
                  backgroundImage:
                      NetworkImage("https://picsum.photos/200/300?=$nomor"),
                ),
                title: Text(titles[nomor]),
              ));
            })
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),

      //       body: 
      // ListView(
      //   children: [
      //     ListTile(
      //       // leading: Icon(Icons.sunny)
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("matahari2.png"),
      //       ),
      //       title: Text("Sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("bulan.png"),
      //         ),
      //       title: Text("Moon"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //       ),
      //     ListTile(
      //        leading: CircleAvatar(
      //         backgroundImage: AssetImage("bintang.png"),
      //        ),
      //       title: Text("Moon"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //       )
      //   ],
      // )



      // body: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //   ),
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //        decoration: const BoxDecoration(
      //         // color: Colors.red,
      //         image: DecorationImage(
      //         image: AssetImage("fotoassets1.jpg"),
      //         ),
      //        )

      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //         decoration: const BoxDecoration(
      //         // color: Colors.red,
      //         image: DecorationImage(
      //         image: AssetImage("fotoassets2.jpg"),
      //         ),
      //        )
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //         decoration: const BoxDecoration(
      //         // color: Colors.red,
      //         image: DecorationImage(
      //         image: AssetImage("fotoassets3.jpg"),
      //         ),
      //        )
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //         decoration: const BoxDecoration(
      //         // color: Colors.red,
      //         image: DecorationImage(
      //         image: AssetImage("fotoassets4.jpg"),
      //         ),
      //        )
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //         decoration: const BoxDecoration(
      //         // color: Colors.red,
      //         image: DecorationImage(
      //         image: AssetImage("fotoassets5.jpg"),
      //         ),
      //        )
      //     ),
      //   ],
      // ),
    );
  }
}
