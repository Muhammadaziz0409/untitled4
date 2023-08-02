import 'package:flutter/material.dart';

class Dars extends StatefulWidget {
  const Dars({super.key});

  @override
  State<Dars> createState() => _DarsState();
}

class _DarsState extends State<Dars> {
  List<String> ismlar = [];
  TextEditingController textController = TextEditingController();

  List<String> familiyalar = [];
TextEditingController textControllerr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),

            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Ism,familiya"),
              
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                ismlar.add(textController.value.text);
              });
            },
            child: Text("Saqla"),
            color: Colors.green,
          ),
          MaterialButton(onPressed: (){}),
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
                  }))
        ],
      ),  
      
    );
  }
}
