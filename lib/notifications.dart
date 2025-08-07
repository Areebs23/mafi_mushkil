import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: NotificationScreen()));
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "title": "Order Accepted",
        "icon": Icons.shopping_bag,
        "color": Colors.orange,
        "time": "2 hrs ago",
        "description": "We have accepted your order. Click to view details."
      },
      {
        "title": "Confirm Order",
        "icon": Icons.verified_user,
        "color": Colors.purple,
        "time": "2 hrs ago",
        "description": "We have added items in your order. Please check and confirm."
      },
      {
        "title": "Order Assigned",
        "icon": Icons.assignment_ind,
        "color": Colors.blue,
        "time": "2 hrs ago",
        "description": "We have assigned your order to a worker. Click to view details."
      },
      {
        "title": "Order Completed",
        "icon": Icons.check_circle,
        "color": Colors.green,
        "time": "2 hrs ago",
        "description": "Your order has been completed. Please check the work done."
      },
      {
        "title": "Order Cancelled",
        "icon": Icons.cancel,
        "color": Colors.red,
        "time": "2 hrs ago",
        "description": "Your order has been cancelled. Click to view details."
      },
      {
        "title": "Announcement",
        "icon": Icons.notifications,
        "color": Colors.black87,
        "time": "2 hrs ago",
        "description": "Our service will be down tomorrow for planned maintenance."
      },
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: item['color'] as Color,
                  child: Icon(item['icon'] as IconData, color: Colors.white),
                ),
                title: Text(item['title'] as String,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(item['description'] as String),
                trailing: Text(item['time'] as String,
                    style: const TextStyle(color: Colors.grey)),
              ),
              const Divider(height: 0),
            ],
          );
        },
      ),
    );
  }
}
