import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int current = 0;

  List lyrics = [
    [
      'Kok kebangetan men',
      'Sambat blas ra ono perhatian',
      'Jelas ku butuh atimu', 
      'Ku butuh awakmu',
      'Kok kebangetan men',
      '',
      'Loro ati iki',
      'Tak mbarno karo tak nggo latihan',
      'Sok nek wes oleh gantimu', 
      'Wes ra kajok aku',
      'Mergo wes tau, wes tau jeru',
      '',
      'Mbiyen aku jek betah', 
      'Suwe-suwe wegah',
      'Nuruti kekarepanmu, sansoyo bubrah',
      '',
      'Mbiyen wes tak wanti-wanti',
      'Ojo ngasi lali',
      'Tapi kenyataannya pergi',
      '',
      'Kartonyono ning Ngawi medot janjimu',
      'Ambruk cagakku nuruti angan-anganmu',
      'Sak kabehane wes tak turuti',
      'Tapi malah mblenjani',
      '',
      'Budalo malah tak duduhi dalane',
      'Metu kono, belok kiri, lurus wae',
      'Ra sah nyawang sepionmu sing marai ati',
      'Tambah mbebani',
      '',
      'Mbiyen aku jek betah', 
      'Suwe-suwe wegah',
      'Nuruti kekarepanmu',
      'Sansoyo bubrah',
      '',
      'Mbiyen wes tak wanti-wanti',
      'Ojo ngasi lali',
      'Tapi kenyataannya pergi',
      '',
      'Kartonyono ning Ngawi medot janjimu',
      'Ambruk cagakku nuruti angan-anganmu',
      'Sak kabehane wes tak turuti',
      'Tapi malah mblenjani',
      '',
      'Budalo malah tak duduhi dalane',
      'Metu kono, belok kiri, lurus wae',
      'Ra sah nyawang sepionmu sing marai ati',
      'Tambah mbebani',
    ],
    [
      'Dalane rame atiku sepi',
      'Angen angen tresno dibales tresno',
      'Nyatane tresno dibales maturnuwun',
      'Uwis nyaman sempet sayang kok malah ngilang',
      '',
      'Meh lungo angel bertahan loro',
      'Nyobo selalu ono meski koe raono roso',
      'Roso sing jebul tak rasakne dewe',
      'Kebacut sayang ngekei harapan koe milih liyane',
      '',
      'Langit e peteng udane soyo deres klebus tekan atiku',
      'Cedak e karo aku nanging atimu dinggo wong liyo',
      '',
      'Wis dalane dadi pelarian dinggo sliramu sing lagi butuh hiburan',
      'Aku sing sayang aku sing berjuang',
      'Bagianmu koyo biasane bagian sing nglarani aku wae',
      '',
      'Langit e peteng udane soyo deres klebus tekan atiku',
      'Cedak e karo aku nanging atimu dinggo wong liyo',
      '',
      'Wis dalane dadi pelarian dinggo sliramu sing lagi butuh hiburan',
      'Aku sing sayang aku sing berjuang',
      'Bagianmu koyo biasane bagian sing nglarani aku wae',
      '',
      'Wis dalane dadi pelarian dinggo sliramu sing lagi butuh hiburan',
      'Aku sing sayang aku sing berjuang',
      'Bagianmu koyo biasane bagian sing nglarani aku wae',
      'Bagianmu koyo biasane bagian sing nglarani aku wae',
    ],
  ];

  List<String> songs = [
    'Kartonyono Medot Janji',
    'Klebus',
  ];

  List<String> artists = [
    'Deny Caknan',
    'Ngatmombilung ',
  ];

  List<String> images = [
    'https://img.okezone.com/content/2020/11/10/33/2307536/dekat-dengan-denny-caknan-happy-asmara-dia-terangi-sisi-gelapku-JOEFwuLjOm.jpg',
    'https://asset.kompas.com/crops/FwsprPZH_iSYMpCK47BsRRVu1Pw=/39x181:766x666/750x500/data/photo/2020/06/10/5ee03f37a77cc.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Flutter Lirik Lagu'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: <Widget>[
            Image.network(images[current]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                songs[current],
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: "Serif",
                  height: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                artists[current],
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "Serif",
                  height: 0.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: ListView.builder(
                  itemCount: lyrics[current].length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      lyrics[current][index],
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (current < 1) {
                        current = songs.length - 1;
                      } else {
                        current--;
                      }
                    });
                  },
                  child: const Text('Back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (current > 0) {
                        current = 0;
                      } else {
                        current++;
                      }
                    });
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
