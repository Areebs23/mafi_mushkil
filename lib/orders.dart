import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: const Text('Orders',style: TextStyle(
            fontWeight: FontWeight.bold
          ),)),
          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'History'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PendingOrders(),
            HistoryOrders(),
          ],
        ),
      ),
    );
  }
}

class PendingOrders extends StatelessWidget {
  const PendingOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        OrderCard(
          title: 'Plumber needed for plumbing...',
          status: 'Pending',
          description: 'Machine fitter needed. Machine\nfitter needed.',
          time: '2 hrs ago',
        ),
        OrderCard(
          title: 'Machine fitter needed.',
          status: 'Confirmed',
          description: 'Machine fitter needed. Machine\nfitter needed.',
          time: '2 hrs ago',
        ),
        OrderCard(
          title: 'Plumber needed for plumbing...',
          status: 'Pending',
          description: 'Machine fitter needed. Machine\nfitter needed.',
          time: '2 hrs ago',
        ),
        OrderCard(
          title: 'Plumbing Services',
          status: 'Assigned',
          description: 'Machine fitter needed. Machine\nfitter needed.',
          time: '2 hrs ago',
        ),
        OrderCard(
          title: 'Plumbing Services',
          status: 'Accepted',
          description: 'Machine fitter needed. Machine\nfitter needed.',
          time: '2 hrs ago',
        ),
      ],
    );
  }
}

class HistoryOrders extends StatelessWidget {
  const HistoryOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
      OrderCard(
        title: 'Your order has been cancelled',
        status: 'cancelled',
        description: 'Machine fitter needed. Machine\nfitter needed.',
        time: '2 hrs ago',
      ),
      OrderCard(
        title: 'Your order is completed',
        status: 'Completed',
        description: 'Machine fitter needed. Machine\nfitter needed.',
        time: '2 hrs ago',
      ),
      ],
    );
  }
}

class OrderCard extends StatelessWidget {
  final String title;
  final String status;
  final String description;
  final String time;

  const OrderCard({
    Key? key,
    required this.title,
    required this.status,
    required this.description,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color statusColor;

    switch (status) {
      case 'Pending':
        statusColor = Colors.orange;
        break;
      case 'Confirmed':
        statusColor = Colors.green;
        break;
      case 'Assigned':
        statusColor = Colors.blue;
        break;
      case 'Accepted':
        statusColor = Colors.pink;
        break;
      case 'cancelled':
        statusColor= Colors.red;
        break;
      case'Completed':
        statusColor=Colors.green;
            break;
      default:
        statusColor = Colors.grey;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: statusColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Description + Clock Icon + Time
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Description text
                Expanded(
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),

                // Clock Icon and Time
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4,),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
