import 'package:flutter/material.dart';
import 'package:flutter_task_app/screens/CategoriesScreen.dart';
import 'package:flutter_task_app/screens/HomeScreen.dart';
import 'package:flutter_task_app/screens/ProfileScreen.dart';
import 'package:flutter_task_app/screens/locationScreen.dart';
import '../themes/colors.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State<NavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const LocationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: SizedBox(
          height: 90,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              _buildNavItem("assets/home.png", "Home", 0),
              _buildNavItem("assets/dice.png", "Categories", 1),
              _buildNavItem("assets/location.png", "Location", 2),
              _buildNavItem("assets/profile.png", "Profile", 3),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      String imagePath, String label, int index) {
    bool isSelected = _currentIndex == index;
    return BottomNavigationBarItem(
      icon: AnimatedContainer(
        height: 50,
        constraints: const BoxConstraints(maxWidth: 130),
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: isSelected ? 16.0 : 0),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              UiColor.gradientColor1,
              UiColor.gradientColor2,
            ], // Gradient colors
            begin: Alignment.topLeft, // Gradient start point
            end: Alignment.bottomRight, // Gradient end point
          ),
          color: isSelected ? UiColor.buttonColor : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorFiltered(
                colorFilter: ColorFilter.mode(
                  isSelected ? Colors.white : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset(imagePath, width: 24, height: 24)),
            if (isSelected)
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(label,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis),
                ),
              ),
          ],
        ),
      ),
      label: '',
    );
  }
}
