import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final listData = [
    {"title": "Coding Journey", "url": "www.coding-journey.io"},
    {"title": "Smashing Magazine", "url": "https://www.smashingmagazine"},
    {"title": "UX Labs", "url": "https://uxlabs.co"},
    {"title": "The Netlify Blog", "url": "https://www.netlify.com/tags"},
    {"title": "Student Life", "url": "https://ulife.com/student-life/"},
    {"title": "Hello.io", "url": "https://hello.io/job-postings/"},
  ];

  int activeMenu = 0;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff293855),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1A2E35).withOpacity(0.05),
                  spreadRadius: 3,
                  blurRadius: 12,
                  offset: Offset(3, 0), // changes position of shadow
                ),
              ]),
          child: Row(
            children: [
              BottomNavBar(icon: Icons.folder, index: 0),
              BottomNavBar(icon: Icons.settings, index: 1),
              BottomNavBar(icon: Icons.bar_chart, index: 2),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 60, 20),
                  child: Text(
                    "Keep up the carbon-free work! 🎉",
                    maxLines: 3,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Subscriptions (18)",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("25% CLEANED",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    children: [
                      CardSubscription(
                          "Coding Journey", "www.coding-journey.io"),
                      CardSubscription(
                          "Smashing Magazine", "https://www.smashingmagazine"),
                      CardSubscription("UX Labs", "https://uxlabs.co"),
                      CardSubscription(
                          "The Netlify Blog", "https://www.netlify.com/tags"),
                      CardSubscription(
                          "Student Life", "https://ulife.com/student-life/"),
                      CardSubscription(
                          "Hello.io", "https://hello.io/job-postings/"),
                    ],
                  ),
                )
              ],
            ),
            Text("Page 2"),
            Text("Page 3"),
          ],
        ),
      ),
    );
  }

  Dismissible CardSubscription(String title, String url) {
    return Dismissible(
      key: Key(title),
      direction: DismissDirection.horizontal,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff293855)),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(url,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff293855).withOpacity(0.7),
                      decoration: TextDecoration.underline,
                    ))
              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Color(0xff4265D6).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.delete,
                color: Color(0xff4265D6),
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector BottomNavBar({IconData icon = Icons.home, int index = 0}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeMenu = index;
          _tabController.animateTo(index);
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 3,
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: index == activeMenu
                  ? Color(0xff4265D6).withOpacity(0.1)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            child: Icon(icon,
                size: 28,
                color: index == activeMenu
                    ? Color(0xff4265D6)
                    : Color(0xff293855).withOpacity(0.7)),
          ),
        ),
      ),
    );
  }
}
