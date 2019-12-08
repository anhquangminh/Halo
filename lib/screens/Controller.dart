import 'package:flutter/material.dart';
import 'Home.dart';
import 'Calls.dart';
import 'CallNow.dart';
import 'Favourites.dart';
import 'Profile.dart';

class Controller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: const Color(0xFF2845E7),
        primaryColorDark: const Color(0xFF2845E7),
      ),
      home: new DashboardScreen(title: ''),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 10), curve: Curves.linear);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: [
          new Home("Home"),
          new CallNow(),
          new Favourites(),
          new Profile("Profile"),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
        ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: const Color(0xFF2845E7),
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
              ),
              title: new Text(
                "Home",
              ),
            ),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.call,
                ),
                title: new Text(
                  "Calls",
                )),

            new BottomNavigationBarItem(
                icon: new Stack(children: <Widget>[
                  new Icon(Icons.favorite),
                  new Positioned(
                      top: -1.0,
                      right: -1.0,
                      child: new Stack(
                        children: <Widget>[
                          new Icon(
                            Icons.brightness_1,
                            size: 10.0,
                            color: const Color(0xFF2845E7),
                          ),
                        ],
                      ))
                ]),
                title: new Text(
                  "Favourites",
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.account_circle,
                ),
                title: new Text(
                  "Profile",
                )),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
