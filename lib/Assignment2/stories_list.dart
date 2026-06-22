import 'package:flutter/material.dart';
import 'story_item.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> stories = [
      {
        "storyImage": "assets/images/goatworldcup.jpg", // ← background story image
        "profileImage": "assets/images/messiprofile.png",       // ← small circle avatar
      },
      {
        "storyImage": "assets/images/goldenboy.png",
        "profileImage": "assets/images/goat.png",
      },
      {
        "storyImage": "assets/images/goatworldcup.jpg", // ← background story image
        "profileImage": "assets/images/messiprofile.png",
      },
      {
        "storyImage": "assets/images/goldenboy.png",
        "profileImage": "assets/images/goat.png",
      },
    ];

    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        itemCount: stories.length + 1, // +1 for "Create Story" card
        itemBuilder: (context, index) {
          if (index == 0) {
            return CreateStoryCard(
              imagePath: "assets/images/thegoat.png",
              onTap: () {},
            );
          }
          final story = stories[index - 1];
          return StoryItem(
            storyImage: story["storyImage"] ?? "assets/images/profile_image.png",
            profileImage: story["profileImage"] ?? "assets/images/profile_image.png",
            onTap: () {},
          );
        },
      ),
    );
  }
}
