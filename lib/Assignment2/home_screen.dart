import 'package:flutter/material.dart';
import 'package:flutterprojects/Assignment2/home_appbar.dart';
import 'package:flutterprojects/Assignment2/create_post_bar.dart';
import 'package:flutterprojects/Assignment2/stories_list.dart';
import 'package:flutterprojects/Assignment2/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(tabController: _tabController),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Home feed tab
          ListView(
            padding: EdgeInsets.zero,
            children: const [
              CreatePostBar(),
              Divider(height: 1),
              StoriesList(),
              Divider(height: 1),
              PostCard(
                userName: "Route",
                userImage: "assets/images/route.png",
                timeAgo: "8h",
                postText: "",
                postImage: "assets/images/route.png",
              ),
              PostCard(
                userName: "Abdelrahman Atef",
                userImage: "assets/images/profile_image.png",
                timeAgo: "1d",
                postText: "",
                postImage: "assets/images/route.png",
              ),
            ],
          ),
          const Center(child: Text("Watch")),
          const Center(child: Text("Marketplace")),
          const Center(child: Text("Friends")),
          const Center(child: Text("Notifications")),
          const Center(child: Text("Profile")),
        ],
      ),
    );
  }
}
