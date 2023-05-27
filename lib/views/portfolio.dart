import 'package:flutter/material.dart';
import '../widgets/portfolioCurrencies.dart';
import '../widgets/portfolioHeader.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const PortfolioHeader(),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    enableFeedback: true,
                    splashColor: const Color.fromARGB(73, 255, 255, 255),
                    focusColor: Colors.white,
                    child: Ink(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 99, 245, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      height: 60,
                      child: const Center(
                        child: Text(
                          "Deposit INR",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    enableFeedback: true,
                    splashColor: const Color.fromARGB(70, 0, 98, 245),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(0, 99, 245, 1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      height: 60,
                      child: const Center(
                        child: Text(
                          "Deposit INR",
                          style:
                              TextStyle(color: Color.fromRGBO(0, 99, 245, 1)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          PortfolioCurrenciesList(),
          
        ],
        
      ),
    );
  }
}
