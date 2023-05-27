import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Refer extends StatelessWidget {
  const Refer({super.key});

  void showSnackBar(BuildContext context, String content) {
    SnackBar snackBar = SnackBar(
      content: Text(content),
      margin: const EdgeInsets.all(10),
      duration: const Duration(milliseconds: 200),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      showCloseIcon: true,
      closeIconColor: Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void copyCode(BuildContext context) async {
    await Clipboard.setData(const ClipboardData(text: "https://www.giottus.com/?refcode=RRPSFAS"));
     showSnackBar(context, "code copied");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          bottomOpacity: 0,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
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
              )),
          title: const Text(
            "Refer and Earn",
            style: TextStyle(color: Colors.black87, fontSize: 18),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
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
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
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
                        "05",
                        style: TextStyle(
                            fontSize: 20, color: Color.fromRGBO(0, 99, 245, 1)),
                      )
                    ],
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(width: 0.3, color: Colors.black12)),
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Column(children: [
                  Center(
                    child: Image.asset(
                      'assets/images/btcPocket.png',
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Refer and Earn Free Crytocurrency"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    " Introducing Giottus Referral 2.0. As part of this new program we will be giving away upto 100% of our earning from your referral. And it does not stop there. You get a chance to win upto 10,000 free tokens. Refer, like, share and Earn.",
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text("Your Referal Link"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.4, color: Colors.black12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: TextFormField(
                                readOnly: true,
                                style: const TextStyle(fontSize: 12),
                                initialValue:
                                    'https://www.giottus.com/?refcode=RRPSFAS',
                                decoration: const InputDecoration(
                                    border: InputBorder.none))),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 50,
                          child: Material(
                            child: InkWell(
                                onTap: () {
                                  copyCode(context);
                                },
                                splashColor: Colors.white10,
                                child: Ink(
                                  color: const Color.fromARGB(229, 0, 98, 245),
                                  child: const Center(
                                    child: Text(
                                      "Copy Code",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Material(
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.white10,
                          child: Ink(
                            height: 50,
                            color: const Color.fromARGB(229, 0, 98, 245),
                            child: const Center(
                              child: Text(
                                "Copy Code",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Terms and Conditions Applied",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(229, 0, 98, 245),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ]),
              )
            ],
          ),
        ));
  }
}
