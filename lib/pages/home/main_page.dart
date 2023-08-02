import 'package:flutter/material.dart';
import 'package:ueu_libapp/pages/home/chat_page.dart';
import 'package:ueu_libapp/pages/home/home_page.dart';
import 'package:ueu_libapp/pages/home/profile_page.dart';
import 'package:ueu_libapp/pages/home/wishlist_page.dart';
import 'package:ueu_libapp/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //

  int currentIndex = 0;

  @override
  void _launchWebsite() async {
    final Uri _url = Uri.parse('https://sso.esaunggul.ac.id/');
    final urlString = _url.toString();
    if (!await launchUrl(_url)) {
      await launch(urlString);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: _launchWebsite,
        backgroundColor: backgroundColor2,
        child: Image.asset(
          'assets/ic_esa_unggul.png',
          width: 30,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor2,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                print(value);
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/ic_home.png',
                    width: 21,
                    color: currentIndex == 0 ? primaryColor : Color(0xffD3D3D3),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                    right: 60,
                  ),
                  child: Image.asset(
                    'assets/ic_chat.png',
                    width: 20,
                    color: currentIndex == 1 ? primaryColor : Color(0xffD3D3D3),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                    left: 60,
                  ),
                  child: Image.asset(
                    'assets/love_off.png',
                    width: 20,
                    color: currentIndex == 2 ? primaryColor : Color(0xffD3D3D3),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/ic_profile.png',
                    width: 18,
                    color: currentIndex == 3 ? primaryColor : Color(0xffD3D3D3),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return WishList();
        case 3:
          return ProfilePage();
        default:
          return HomePage(); // Return a default widget or handle the case accordingly.
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor : backgroundColor,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
