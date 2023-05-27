import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../widgets/giftCart.dart';
import '../views/refer.dart';

class Gifts extends StatelessWidget {
  const Gifts({super.key});

  void navigateToreferPage() {}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                    width: 1, color: const Color.fromARGB(37, 0, 0, 0))),
            child: const Column(children: [
              SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Coupons",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "No.of Coupons Won",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "06",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tokens wonfrom Spin so far",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "08",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(0, 99, 245, 1)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Remaining Coupons toSpin",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "01",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(0, 99, 245, 1)),
                  )
                ],
              )
            ]),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                    width: 1, color: const Color.fromARGB(37, 0, 0, 0))),
            child: const Column(children: [
              SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Referral",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total No of referral",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "12",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total No of Qualified referral",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "12",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(0, 99, 245, 1)),
                  )
                ],
              )
            ]),
          ),
          GiftCard(
            onClick: () {
              Navigator.push(
                  context,
                  PageTransition(
                    reverseDuration: const Duration(milliseconds: 300),
                    duration: const Duration(milliseconds: 300),
                    type: PageTransitionType.rightToLeft,
                    child: const Refer(),
                  ));
            },
            buttonText: "Refer Now",
            title: "Refer and Earn",
            description: 'Refer you Friend \nand Win Cryptocoins',
            vector: "assets/images/giftVector1.png",
            background: const Color.fromRGBO(245, 147, 0, 100),
          ),
          GiftCard(
            onClick: () {},
            buttonText: "Get Tokens",
            title: "Rewards",
            description: 'Spin Wheel & \n Win Free Tokens!',
            vector: "assets/images/giftVector3.png",
            background: const Color.fromRGBO(147, 0, 98, 100),
          ),
          GiftCard(
            onClick: () {},
            buttonText: "Share Now",
            title: "Rewards",
            description: 'Like, Share & \nget free coupons',
            vector: "assets/images/giftVector2.png",
            background: const Color.fromRGBO(147, 0, 245, 100),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
