import 'package:adopta_y_sonrie/app/presentation/modules/profile/view/profile_view.dart';
import 'package:flutter/material.dart';

import '../modules/home/view/home_view.dart';


class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> with AutomaticKeepAliveClientMixin {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _children = [
    const HomeView(),
    ProfileView(),
    // Agrega más vistas aquí
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Adopta y Sonrie'),
        ),
        body: PageView(
          controller: _pageController,
          children: _children,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.purple,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'Profile',
            ),
            // Agrega más BottomNavigationBarItems aquí
          ],
        ),
      );
  }
  
  @override
  bool get wantKeepAlive => true;
}