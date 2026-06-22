import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String userName;
  final String userImage;
  final String postText;
  final String? postImage;
  final String timeAgo;

  const PostCard({
    Key? key,
    required this.userName,
    required this.userImage,
    required this.postText,
    this.postImage,
    this.timeAgo = "Just now",
  }) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _isLiked = false;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header: profile image, name, more icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/routeprofile.png"),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      // Time + globe icon
                      Row(
                        children: [
                          Text(
                            widget.timeAgo,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Image.asset(
                            "assets/images/global.png",
                            width: 12,
                            height: 12,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/more1.png",
                    color: const Color(0xff000000),
                    width: 24.06,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // Post image (optional)
          if (widget.postImage != null) ...[
            const SizedBox(height: 10),
            Image.asset(
              widget.postImage!,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],

          const SizedBox(height: 8),

          // Action buttons: like, comment, share, bookmark
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: _toggleLike,
                  icon: Image.asset(
                    "assets/images/like.png",
                    color: _isLiked ? const Color(0xff1877F2) : const Color(0xff000000),
                    width: 24.06,
                    height: 24,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/comment.png",
                    color: const Color(0xff000000),
                    width: 24.06,
                    height: 24,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/share.png",
                    color: const Color(0xff000000),
                    width: 24.06,
                    height: 24,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/save.png",
                    color: const Color(0xff000000),
                    width: 24.06,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}