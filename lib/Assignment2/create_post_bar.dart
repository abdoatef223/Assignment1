import 'package:flutter/material.dart';

class CreatePostBar extends StatelessWidget {
  const CreatePostBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/messiprofile.png"),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "What's in Your Mind?",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: Image.asset("assets/images/photos.png"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}