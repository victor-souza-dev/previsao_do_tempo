import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/providers/weatcher_server.dart';
import 'package:previsao_do_tempo/screens/home/widgets/main_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (
        BuildContext context,
        AsyncSnapshot<dynamic> snapshot,
      ) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            );
          default:
            return MainScreen(snapshot.data["results"]);
        }
      },
    );
  }
}
