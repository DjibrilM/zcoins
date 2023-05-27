import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:page_transition/page_transition.dart';
import '../views/selling.dart';
import '../views/buying.dart';
import '../widgets/storiesSnapshotList.dart';

class CurrencyDetail extends StatefulWidget {
  final String title;
  final double rate;
  final String percentageRate;
  final List<double> data;
  final String currencyLogo;
  final String currencyMark;

  const CurrencyDetail(
      {required this.currencyLogo,
      required this.rate,
      required this.title,
      required this.data,
      required this.currencyMark,
      required this.percentageRate});

  @override
  State<CurrencyDetail> createState() => _CurrencyDetailState();
}

class _CurrencyDetailState extends State<CurrencyDetail> {
  String get rate {
    return widget.rate.toString();
  }

  String get percentageRate {
    return widget.percentageRate;
  }

  String get currencyImage {
    return widget.currencyLogo;
  }

  String get title {
    return widget.title;
  }

  String get currencyMark {
    return widget.currencyMark;
  }

  void showExchangeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            height: 350,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: const Text(
                    "Exchange",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5, color: Color.fromARGB(54, 0, 0, 0)))),
                  child: ListTile(
                    leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          "assets/images/sendArrow.png",
                          width: 15,
                        )),
                    title: const Text("Send crypto"),
                    subtitle: const Text(
                        "send crypto from your wallet to another wallet"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                    leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          "assets/images/receive.png",
                          width: 15,
                        )),
                    title: const Text("Receive crypto"),
                    subtitle: const Text(
                        "receive crypto from another wallet to your wallet"),
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Material(
                      child: InkWell(
                    onTap: () {},
                    splashColor: Colors.white10,
                    child: Ink(
                      height: 60,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 0, 98, 245),
                      child: const Center(
                          child: Text(
                        "UPDATE MARKET",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        height: 70,
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
                    width: 0.3, color: Color.fromARGB(53, 0, 0, 0)))),
        child: Row(
          children: [
            Expanded(
              child: Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Buying(
                            currency: widget.currencyMark,
                            currencyTitle: widget.title,
                          ),
                        ));
                  },
                  splashColor: const Color.fromARGB(60, 255, 255, 255),
                  child: Ink(
                    height: double.infinity,
                    color: const Color.fromARGB(255, 0, 98, 245),
                    child: const Center(
                        child: Text(
                      "BUY",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Selling(
                            currency: widget.currencyMark,
                            currencyTitle: widget.title,
                          ),
                        ));
                  },
                  splashColor: const Color.fromARGB(57, 255, 255, 255),
                  child: Ink(
                    height: double.infinity,
                    color: const Color.fromARGB(255, 0, 98, 245),
                    child: const Center(
                        child: Text(
                      "SELL",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
          bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$ $rate',
                      style: const TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      percentageRate,
                      style: TextStyle(
                          fontSize: 14,
                          color: percentageRate.contains('-')
                              ? Colors.red
                              : Colors.green),
                    )
                  ],
                ),
              )),
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                currencyImage,
                width: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(title,
                  style: const TextStyle(color: Colors.black, fontSize: 14)),
              Text(
                '( $currencyMark )',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 12),
              )
            ],
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 5, right: 10),
              width: 120,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  showExchangeBottomSheet(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(65, 0, 98, 245),
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/exchange.png',
                        width: 23,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "exchange",
                        style: TextStyle(color: Color.fromRGBO(0, 99, 245, 1)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
          leading: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                Navigator.of(context).pop();
              },
              splashColor: Colors.black26,
              child: Ink(
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.chevronLeft,
                    size: 20,
                    color: Color.fromARGB(255, 97, 97, 97),
                  ),
                ),
              ))),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 30, left: 5, right: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 0.5,
                  color: Colors.black26,
                ))),
                child: SfSparkLineChart(
                    color: percentageRate.contains('-')
                        ? Colors.red
                        : Colors.green,
                    labelStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    axisLineColor: Colors.transparent,
                    //Enable the trackball
                    trackball: SparkChartTrackball(
                        tooltipFormatter: (TooltipFormatterDetails details) {
                          return '\$$details.label';
                        },
                        activationMode: SparkChartActivationMode.tap),
                    //Enable marker
                    //Enable data label
                    labelDisplayMode: SparkChartLabelDisplayMode.high,
                    data: widget.data)),
            Container(
              margin: const EdgeInsets.all(
                20,
              ),
              child: const Text(
                "Market status",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 70,
              width: double.infinity,
              child: ListTile(
                leading: Container(
                    alignment: Alignment.centerLeft,
                    width: 30,
                    child: Image.asset(
                      "assets/images/graph.dart",
                      width: 25,
                    )),
                title: const Text(
                  "Market Cap",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: const Text("\$19.8 trillion"),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 70,
              width: double.infinity,
              child: ListTile(
                leading: Container(
                    alignment: Alignment.centerLeft,
                    width: 30,
                    child: Image.asset(
                      "assets/images/libegraph.dart",
                      width: 25,
                    )),
                title: const Text(
                  "Volume",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: const Text("\$4.1 trillion"),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 70,
              width: double.infinity,
              child: ListTile(
                leading: Container(
                    alignment: Alignment.centerLeft,
                    width: 30,
                    child: Image.asset(
                      "assets/images/cerclegraph.png",
                      width: 25,
                    )),
                title: const Text(
                  "Circulating Supply ",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: const Text("116.0 million"),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 70,
              width: double.infinity,
              child: ListTile(
                leading: Container(
                    alignment: Alignment.centerLeft,
                    width: 30,
                    child: Image.asset(
                      "assets/images/cross.png",
                      width: 25,
                    )),
                title: const Text(
                  "Circulating Supply ",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: const Text("#2"),
              ),
            ),
            StoriesSnapshotList()
          ],
        ),
      ),
    );
  }
}
