import 'package:flutter/material.dart';

void main() => runApp(App());

GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF7D9AFF),
        accentColor: Color(0xFF7D9AFF),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      body: Center(
        child: Text('Hello world'),
      ),
    );
  }
}
Widget _buildWidgetAlbumCover(MediaQueryData mediaQuery) {
  return Container(
    width: double.infinity,
    height: mediaQuery.size.height / 1.8,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(48.0),
      ),
      image: DecorationImage(
        image: AssetImage('assets/denny.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
Widget build(BuildContext context) {
  var mediaQuery = MediaQuery.of(context);

  return Scaffold(
    key: scaffoldState,
    body: Stack(
      children: <Widget>[
        _buildWidgetAlbumCover(mediaQuery),
      ],
    ),
  );
}
