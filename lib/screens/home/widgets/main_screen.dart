import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:previsao_do_tempo/models/forecast.dart';
import 'package:previsao_do_tempo/screens/home/widgets/week.dart';
import 'package:previsao_do_tempo/shared/find_icon.dart';

class MainScreen extends StatelessWidget {
  final dynamic _data;

  MainScreen(this._data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(
              vertical: 80,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  this._data["city"],
                  style:  
                  TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  this._data["date"],
                  style:
                  TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                SvgPicture.asset(
                  findIcon(
                    this._data["condition_slug"],
                  ),
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  "${this._data["temp"]}°",
                  style:  
                  TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.2,
                  ),
                  
                ),
                Text(
                  this._data["description"],
                  style:
                  TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: SvgPicture.asset(
                    "assets/imgs/vento.svg",
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
                Text(
                  this._data["wind_speedy"],
                  style: 
                  TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                  ),
                ),
                SizedBox(height: 20,),
                Week(
                  buildWeek(this._data["forecast"]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Forecast> buildWeek(dynamic data) {
    List<Forecast> listWeek = [];
    for (var item in data) {
      listWeek.add(
        Forecast(
          weekday: item["weekday"],
          icon: findIcon(item["condition"]),
          temperature: item["max"],
        ),
      );
    }
    return listWeek;
  }
}
