import 'package:flutter/material.dart';


class OrderhistoryView extends StatefulWidget {
  const OrderhistoryView({super.key});

  @override
  State<OrderhistoryView> createState() => _OrderhistoryViewState();
}

class _OrderhistoryViewState extends State<OrderhistoryView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Order History"),),
    );
  }
}