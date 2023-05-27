import 'package:flutter/material.dart';
import './story.dart';
import '../model/story.dart';

class StoriesSnapshotList extends StatelessWidget {
  StoriesSnapshotList({super.key});

  final List<StoryModel> storiesList = [
    const StoryModel(
        description:
            "Why Bitcoiners Are Rooting for This Latest China Mining Ban to Finally, Actually Be Real",
        date: "12 hrs ago",
        storyImage: "assets/images/article.png",
        postedBy: "Coindesk"),
    const StoryModel(
        description:
            "‘Grayscale Discount’ Narrows to 10% and Could Shrink More as Lockups Expire",
        date: "08 hrs ago",
        storyImage: "assets/images/article2.png",
        postedBy: "Coindesk"),
    const StoryModel(
        description:
            "Elon Musk Says Lightning Network ‘Needed’ to Scale Bitcoin for Now",
        date: "16 hrs ago",
        storyImage: "assets/images/article3.png",
        postedBy: "Coindesk")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...storiesList
            .map(
              (e) => Story(
                description: e.description,
                date: e.date,
                postedBy: e.postedBy,
                image: e.storyImage,
              ),
            )
            .toList()
      ],
    );
  }
}
