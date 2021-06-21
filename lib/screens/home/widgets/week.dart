import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:previsao_do_tempo/models/forecast.dart';

class Week extends StatelessWidget {
  final List<Forecast> forecastList;

  Week(this.forecastList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemBuilder: builder,
          itemCount: this.forecastList.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Forecast forecast = this.forecastList.elementAt(index);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            forecast.weekday,
            style: 
            TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.0325,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: SvgPicture.asset(
              forecast.icon,
              width: MediaQuery.of(context).size.width * 0.04,
            ),
          ),
          Text(
            "${forecast.temperature}º",
            style: 
            TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.025,
            ),
          ),
        ],
      ),
    );
  }
}
