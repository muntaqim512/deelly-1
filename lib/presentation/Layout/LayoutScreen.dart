import 'package:deelly/components/MyText.dart';
import 'package:flutter/material.dart';
import 'package:deelly/presentation/HomeScreen/HomeScreen.dart';
import 'package:sizer/sizer.dart';

class LayoutScreen extends StatefulWidget {
  late int selectedIndex;
  LayoutScreen({super.key, this.selectedIndex = 0});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _currentIndex = 0;

  static List<Widget> _widgetOptions = [
    HomeScreen(),
    Center(
      child: MyText(
        text: "Coming soon..",
        fontSize: 13.sp,
        fontWeight: FontWeight.w700,
      ),
    ),
    Center(
      child: MyText(
        text: "Coming soon..",
        fontSize: 13.sp,
        fontWeight: FontWeight.w700,
      ),
    ),
    Center(
      child: MyText(
        text: "Coming soon..",
        fontSize: 13.sp,
        fontWeight: FontWeight.w700,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_navBarsItems().length, (index) {
            return _buildNavItem(index);
          }),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index) {
    String iconPath = "assets/images/Home.png";
    String label = "Home";

    if (index == 1) {
      iconPath = "assets/images/catagories.png";
      label = "Catagories";
    } else if (index == 2) {
      iconPath = "assets/images/Location-1.png";
      label = "Locations";
    } else if (index == 3) {
      iconPath = "assets/images/Profile.png";
      label = "Profile";
    }

    if (_currentIndex == index) {
      return GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5ACD84), Color(0xFF56AEFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Image.asset(
                iconPath,
                width: 24,
                height: 24,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              MyText(
                text: label,
                color: Colors.white,
                fontSize: 9.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Image.asset(
          iconPath,
          width: 24,
          height: 24,
          color: Colors.grey,
        ),
      );
    }
  }

  List<BottomNavigationBarItem> _navBarsItems() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.category), label: "Catagories"),
      BottomNavigationBarItem(
          icon: Icon(Icons.location_on), label: "Locations"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    ];
  }
}
