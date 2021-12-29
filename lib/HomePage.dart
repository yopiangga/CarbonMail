import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff293855),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
        body: TabBarView(
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

  Container CardSubscription(String title, String url) {
    return Container(
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
    );
  }
}
