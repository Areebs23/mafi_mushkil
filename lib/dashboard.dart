import 'package:flutter/material.dart';
import 'package:mafi_mushkil/home.dart';
import 'package:mafi_mushkil/notifications.dart';
import 'package:mafi_mushkil/orders.dart';
import 'package:mafi_mushkil/promotions.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    OrdersScreen(),
    PromotionsScreen(),
    NotificationScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: const [
       BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded),label: 'Orders') ,
          BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard_outlined),label: 'Promotions'),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notifications'),
      ],
      )  ,
    );
  }
}
