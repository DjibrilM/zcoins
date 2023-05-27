import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String description;
  final String date;
  final String postedBy;
  final String image;

  const Story(
      {super.key,
      required this.image,
      required this.description,
      required this.date,
      required this.postedBy});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(description),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postedBy,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            width: 100,
            height: 100,
            child: Image.asset(image),
          )
        ],
      ),
    );
  }
}
