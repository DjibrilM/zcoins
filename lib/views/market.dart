import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/currency.dart';
import '../widgets/currencyListElement.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    print("print something");
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  final List<Currency> allCurrencies = [
    Currency(
        progessData: <double>[1, 5, -6, 0, 1, 5, 11, 5, 3],
        title: "Bitcoin",
        name: "BTC",
        rate: 2509.75,
        progessRatePercentages: "+9.77%",
        currencyAvatar: "assets/images/bitcoin.png"),
    Currency(
        title: "Ethereum",
        name: "ETH",
        rate: 2509.75,
        progessRatePercentages: "-21.00%",
        progessData: <double>[
          1,
          5,
          30,
          0,
          1,
          -2,
          7,
          -7,
          20,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ],
        currencyAvatar: "assets/images/ethereum.png"),
    Currency(
        title: "Cardano",
        name: "ADA",
        rate: 105.06,
        progessRatePercentages: "+16.31%",
        currencyAvatar: "assets/images/cardona.png",
        progessData: <double>[
          1,
          5,
          -6,
          0,
          1,
          -2,
          7,
          -7,
          -4,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ]),
    Currency(
        title: "TRON ",
        name: "TRX",
        rate: 5.29,
        progessRatePercentages: "+16.58%",
        currencyAvatar: "assets/images/tron.png",
        progessData: <double>[
          1,
          5,
          -6,
          0,
          1,
          -2,
          7,
          -7,
          -4,
          -10,
          13,
          -2,
          7,
          -7,
          -4,
          -10,
          13,
          -2,
          7,
          -7,
          -4,
          -10,
          -13,
        ]),
    Currency(
        title: "Theter ",
        name: "USDT",
        rate: 77.00,
        progessRatePercentages: "+0.08%",
        currencyAvatar: "assets/images/tether.png",
        progessData: <double>[1, 5, -10, 13, -6, 7, 5, 11, 5, 3]),
    Currency(
        title: "Dogecoin ",
        name: "DOGE",
        rate: 23.39,
        progessRatePercentages: "+21.00%",
        currencyAvatar: "assets/images/dogecoin.png",
        progessData: <double>[1, 5, -10, 13, -6, 7, 5, 11, 5, 3, 10, 20, 100]),
  ];

  final List<Currency> gainers = [
    Currency(
        progessData: <double>[1, 5, -6, 0, 1, 5, 11, 5, 3],
        title: "Bitcoin",
        name: "BTC",
        rate: 2509.75,
        progessRatePercentages: "+9.77%",
        currencyAvatar: "assets/images/bitcoin.png"),
    Currency(
        title: "Ethereum",
        name: "ETH",
        rate: 2509.75,
        progessRatePercentages: "+21.00%",
        progessData: <double>[
          1,
          5,
          30,
          0,
          1,
          -2,
          7,
          -7,
          20,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ],
        currencyAvatar: "assets/images/ethereum.png"),
    Currency(
        title: "Cardano",
        name: "ADA",
        rate: 105.06,
        progessRatePercentages: "+16.31%",
        currencyAvatar: "assets/images/cardona.png",
        progessData: <double>[
          1,
          5,
          -6,
          0,
          1,
          -2,
          7,
          -7,
          -4,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ]),
    Currency(
        title: "Uniswap ",
        name: "UNI",
        rate: 5.29,
        progessRatePercentages: "+16.58%",
        currencyAvatar: "assets/images/uniswap.png",
        progessData: <double>[
          1,
          5,
          0,
          1,
          7,
          13,
          7,
          13,
          -2,
          7,
        ]),
    Currency(
        title: "Theter ",
        name: "USDT",
        rate: 77.00,
        progessRatePercentages: "+0.08%",
        currencyAvatar: "assets/images/tether.png",
        progessData: <double>[1, 5, -10, 13, -6, 7, 5, 11, 5, 3]),
    Currency(
        title: "XPR",
        name: "XPR",
        rate: 77.00,
        progessRatePercentages: "+0.08%",
        currencyAvatar: "assets/images/xpr.png",
        progessData: <double>[1, 5, -10, 13, -6, 7, 5, 11, 5, 3]),
  ];

  final List<Currency> losers = [
    Currency(
        progessData: <double>[1, 5, -6, 0, 1, 5, 11, 5, 3, -50],
        title: "Ethereum",
        name: "ETH",
        rate: 2509.75,
        progessRatePercentages: "-2.77%",
        currencyAvatar: "assets/images/ethereum.png"),
    Currency(
        title: "Band Protocol",
        name: "BAND",
        rate: -209.75,
        progessRatePercentages: "-21.00%",
        progessData: <double>[
          1,
          5,
          30,
          0,
          1,
          -2,
          7,
          -100,
          -7,
          20,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ],
        currencyAvatar: "assets/images/brandband.png"),
    Currency(
        title: "TRON ",
        name: "TRX",
        rate: -100.06,
        progessRatePercentages: "-16.31%",
        currencyAvatar: "assets/images/tron.png",
        progessData: <double>[
          1,
          5,
          -6,
          0,
          1,
          -2,
          7,
          -7,
          -4,
          -10,
          13,
          -6,
          7,
          5,
          -11,
          5,
          3
        ]),
    Currency(
        title: "Neo  ",
        name: "Neo ",
        rate: -5.29,
        progessRatePercentages: "-16.58%",
        currencyAvatar: "assets/images/neo.png",
        progessData: <double>[
          1,
          5,
          0,
          1,
          7,
          13,
          7,
          -13,
          -40,
          -2,
          7,
        ]),
    Currency(
        title: "EOS",
        name: "EOS",
        rate: -11.00,
        progessRatePercentages: "-0.08%",
        currencyAvatar: "assets/images/eos.png",
        progessData: <double>[1, 5, -10, -13, -6, 7, 5, -11, 5, 3]),
    Currency(
        title: "DAI",
        name: "DAI",
        rate: -16.00,
        progessRatePercentages: "-0.08%",
        currencyAvatar: "assets/images/dai.png",
        progessData: <double>[1, 5, -10, -13, -6, 7, 5, -11, 5, 3]),
  ];

  final List<Currency> favorites = [
    Currency(
        progessData: <double>[1, 5, -6, 0, 1, 5, 11, 5, 3, 50],
        title: "Ethereum",
        name: "ETH",
        rate: 2509.75,
        progessRatePercentages: "-2.77%",
        currencyAvatar: "assets/images/ethereum.png"),
    Currency(
        title: "Band Protocol",
        name: "BAND",
        rate: -209.75,
        progessRatePercentages: "+21.00%",
        progessData: <double>[
          1,
          5,
          30,
          0,
          1,
          -2,
          7,
          100,
          -7,
          20,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ],
        currencyAvatar: "assets/images/brandband.png"),
  ];

  List<Map> market = [
    {"title": "USA-USD", "active": true},
    {"title": "Bitcoin-BTC", "active": false},
    {"title": "Tether-US", "active": false}
  ];

  String get marketIndicator {
    dynamic element = market.firstWhere((element) => element["active"] == true);
    return element["title"].length > 0 ? element["title"] : "";
  }

  void updateMarketIndicator(index) {
    setState(() {
      int getIndex = market.indexWhere((element) => element["active"]);
      market[getIndex]["active"] = false;
      market[index]["active"] = true;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, setState) => Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Market",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 19,
                        ),
                      ),
                      ...market.mapIndexed(
                        (int index, e) => Container(
                          height: 70,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color:
                                          Color.fromARGB(62, 107, 107, 107)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(e["title"]),
                              Radio(
                                value: market[index]["active"],
                                groupValue: true,
                                onChanged: (_) {
                                  setState(() {
                                    updateMarketIndicator(index);
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            splashColor:
                                const Color.fromARGB(157, 255, 255, 255),
                            child: Ink(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(0, 99, 245, 1),
                              ),
                              child: const Center(
                                child: Text(
                                  "Update Market",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15, right: 20, top: 40),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Market is down ",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text("-11.17%",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          )),
                    ],
                  ),
                  const Text(
                    "In the past 24 hours",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
              const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: Color.fromARGB(255, 97, 97, 97),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Coins",
                style: TextStyle(fontSize: 25),
              ),
              GestureDetector(
                onTap: () => openBottomSheet(context),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 0.4,
                          color: const Color.fromARGB(127, 158, 158, 158))),
                  child: Row(
                    children: [
                      Text(
                        marketIndicator,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1, color: Color.fromARGB(73, 158, 158, 158)))),
          width: double.infinity,
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.grey,
            labelColor: const Color.fromRGBO(0, 99, 245, 1),
            indicator: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 4, color: Color.fromRGBO(0, 99, 245, 1)))),
            labelPadding: const EdgeInsets.all(0),
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Gainers',
              ),
              Tab(
                text: 'Losers',
              ),
              Tab(
                text: 'Favorites',
              )
            ],
          ),
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ...allCurrencies
                    .map((e) => CurrencyListEl(
                        progess: e.progessData,
                        title: e.title,
                        name: e.name,
                        rate: e.rate,
                        avatar: e.currencyAvatar,
                        progessRatePercentages: e.progessRatePercentages))
                    .toList()
              ],
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ...gainers
                    .map((e) => CurrencyListEl(
                        progess: e.progessData,
                        title: e.title,
                        name: e.name,
                        rate: e.rate,
                        avatar: e.currencyAvatar,
                        progessRatePercentages: e.progessRatePercentages))
                    .toList()
              ],
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ...losers
                    .map((e) => CurrencyListEl(
                        progess: e.progessData,
                        title: e.title,
                        name: e.name,
                        rate: e.rate,
                        avatar: e.currencyAvatar,
                        progessRatePercentages: e.progessRatePercentages))
                    .toList()
              ],
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "assets/images/favoriteVector.png",
                        width: 200,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Special place for Favorite coins",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Add you favorite coins and check here easily ",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        )
      ],
    );
  }
}
