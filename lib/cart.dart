import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  final int totalproducts;
   Cart({super.key, required this.totalproducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(child: Text("Total Products: ${totalproducts}", style: TextStyle(fontSize: 20),)),
    );
  }
}

