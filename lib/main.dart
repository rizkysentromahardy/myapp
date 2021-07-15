import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int klikik = 0;
  void klik() {
    setState(() {
      klikik++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('belajar'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(klikik.toString()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: klik, child: Text('Tambah')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            klikik--;
                          });
                          //anonymouse method
                        },
                        child: Text('Kurang'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
