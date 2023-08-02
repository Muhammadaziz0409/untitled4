import 'package:flutter/material.dart';
import 'package:untitled4/dars.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> ismlar = [];
  TextEditingController txtcontroller = TextEditingController();
List<String> familiyalar = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
          child:TextField(
            controller: txtcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ) ,),

          MaterialButton(
            onPressed: () {
              setState(() {
                ismlar.add(txtcontroller.value.text);

              });
            },
            child: Text("Saqla"),
            color: Colors.amberAccent,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: ismlar.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    color: Colors.green[200],
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    child: Text(ismlar[index]),
                  );
                }),
          ), Expanded(
            child: ListView.builder(
                itemCount: familiyalar.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    color: Colors.green[200],
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    child: Text(familiyalar[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
