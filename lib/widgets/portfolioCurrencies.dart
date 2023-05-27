import 'package:flutter/material.dart';
import './currencyListElement.dart';
import '../model/currency.dart';

class PortfolioCurrenciesList extends StatelessWidget {
  PortfolioCurrenciesList({super.key});

  final List<Currency> homeCurrenciesData = [
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
        title: "Theter ",
        name: "USDT",
        rate: 77.00,
        progessRatePercentages: "+0.08%",
        currencyAvatar: "assets/images/tether.png",
        progessData: <double>[1, 5, -10, 13, -6, 7, 5, 11, 5, 3]),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
            "Your Coins",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...homeCurrenciesData
                .map((e) => CurrencyListEl(
                    progess: e.progessData,
                    key: UniqueKey(),
                    title: e.title,
                    name: e.name,
                    rate: e.rate,
                    avatar: e.currencyAvatar,
                    progessRatePercentages: e.progessRatePercentages))
                .toList()
          ],
        ),
      ],
    );
  }
}
