 import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Orders'),
          //backgroundColor: Colors.purple,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Active Orders'),
              Tab(text: 'History Orders'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ActiveOrdersView(),
            HistoryOrdersView(),
          ],
        ),
      ),
    );
  }
}

class ActiveOrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with your logic to fetch and display active orders
    return Center(
      child: Text('Active Orders will be displayed here'),
    );
  }
}

class HistoryOrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with your logic to fetch and display history orders
    return Center(
      child: Text('History Orders will be displayed here'),
    );
  }
}


        