import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import '../views/CurrencyDetail.dart';
import 'package:page_transition/page_transition.dart';

class CurrencyListEl extends StatelessWidget {
  final String title;
  final String name;
  final String avatar;
  final double rate;
  final String progessRatePercentages;
  final List<double> progess;

  const CurrencyListEl(
      {super.key,
      required this.progess,
      required this.title,
      required this.name,
      required this.rate,
      required this.avatar,
      required this.progessRatePercentages});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border:
              Border.all(width: 0.5, color: const Color.fromARGB(51, 0, 0, 0)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListTile(
        leading: SizedBox(
            width: 50,
            height: 50,
            child: Image.asset(
              avatar,
              width: 30,
            )),
        title: Text(title),
        subtitle: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w200),
        ),
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: CurrencyDetail(
                  currencyLogo:avatar ,
                  percentageRate: progessRatePercentages,
                  data: progess,
                  title: name,
                  currencyMark: name,
                  rate: rate,
                ),
              ));
        },
        trailing: Container(
          alignment: Alignment.centerLeft,
          width: 160,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: ChartLine(
                    rate: progessRatePercentages,
                    progess: progess,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '\$ $rate',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(progessRatePercentages,
                      style: TextStyle(
                          color: progessRatePercentages.contains("-")
                              ? Theme.of(context).colorScheme.error
                              : Colors.green)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartLine extends StatelessWidget {
  final String rate;
  final List<double> progess;
  const ChartLine({super.key, required this.rate, required this.progess});

  @override
  Widget build(BuildContext context) {
    return SfSparkLineChart(
      color: rate.contains("-")
          ? Colors.red
          : const Color.fromARGB(255, 134, 224, 137),
      axisLineColor: Colors.transparent,
      trackball: const SparkChartTrackball(
          borderWidth: 0.3,
          backgroundColor: Colors.red,
          activationMode: SparkChartActivationMode.longPress,
          borderColor: Colors.red),
      data: progess,
    );
  }
}
