import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const HomeAppBar({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 16,
      title: Image.asset("assets/images/facebook.png"),
      actions: [
        IconButton(
          icon: Image.asset("assets/images/plus.png"),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset("assets/images/search.png"),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/images/messenger.png",
            width: 24,
            height: 24,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 4),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: Row(
          children: [
            Expanded(
              child: TabBar(
                controller: tabController,
                indicatorColor: const Color(0xff1877F2),
                indicatorWeight: 3,
                labelColor: const Color(0xff1877F2),
                unselectedLabelColor: Color(0xff000000),
                tabs: const [
                  Tab(icon: Image(image: AssetImage("assets/images/home.png"))),
                  Tab(icon: Image(image: AssetImage("assets/images/reels.png"))),
                  Tab(icon: Image(image: AssetImage("assets/images/store.png"))),
                  Tab(icon: Image(image: AssetImage("assets/images/people.png"))),
                  Tab(icon: Image(image: AssetImage("assets/images/Notification.png"))),
                  Tab(icon: Image(image: AssetImage("assets/images/messiprofile.png"))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);
}