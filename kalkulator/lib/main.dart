import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? hasil = 0, num1 = 0, num2 = 0;
  tambah() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      hasil = num1! + num2!;
    });
  }

  kurang() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      hasil = num1! - num2!;
    });
  }

  kali() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      hasil = num1! * num2!;
    });
  }

  bagi() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      hasil = num1! ~/ num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "hasil: $hasil",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "masukan nilai pertama",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "masukan nilai kedua",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      tambah();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: Text("tambah")),
                ElevatedButton(
                    onPressed: () {
                      kurang();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: Text("kurang")),
                ElevatedButton(
                    onPressed: () {
                      kali();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: Text("kali")),
                ElevatedButton(
                    onPressed: () {
                      bagi();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: Text("bagi")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
