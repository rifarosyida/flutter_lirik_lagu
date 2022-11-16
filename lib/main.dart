import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi Flutter Lirik Lagu'),
            backgroundColor: Colors.deepOrange,
          ),
          body:  Column(
              children: <Widget>[
                Image.network('https://img.okezone.com/content/2020/11/10/33/2307536/dekat-dengan-denny-caknan-happy-asmara-dia-terangi-sisi-gelapku-JOEFwuLjOm.jpg'),
                Text(
                  'Kartonyono Medot Janji',
                  style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
                ),
                Text('oleh Denny Caknan\n Kok kebangetan men\n Sambat blas ra ono perhatian\n Jelas ku butuh atimu, ku butuh awakmu\n Kok kebangetan men\n Loro ati iki\n Tak mbarno karo tak nggo latihan\n')
            ]
          )

      ),
    );
  }
}
