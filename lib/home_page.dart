
// home_page.dart
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ONLINE SOFT SELL'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            color: Colors.teal[100],
            child: Text(
              'Hello, Admin',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                buildDashboardCard('CUSTOMERS', Icons.people),
                buildDashboardCard('SUPPLIERS', Icons.local_shipping),
                buildDashboardCard('PRODUCTS', Icons.shopping_bag),
                buildDashboardCard('POS', Icons.point_of_sale),
                buildDashboardCard('EXPENSE', Icons.receipt_long),
                buildDashboardCard('ORDERS', Icons.shopping_cart),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDashboardCard(String title, IconData icon) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60,
            color: Colors.teal,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
