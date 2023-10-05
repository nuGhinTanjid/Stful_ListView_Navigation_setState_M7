import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:module7_asssignment/cart.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int cnt =0;
  List<Map<String, dynamic>> p_info = [
    /*{"pName": "Product 1", "price": 50, "counter": 0},
    {"pName": "Product 2", "price": 70, "counter": 0},
    {"pName": "Product 3", "price": 90, "counter": 0},
    {"pName": "Product 4", "price": 110, "counter": 0},
    {"pName": "Product 5", "price": 40, "counter": 0},
    {"pName": "Product 6", "price": 30, "counter": 0},
    {"pName": "Product 7", "price": 25, "counter": 0},
    {"pName": "Product 8", "price": 45, "counter": 0},
    {"pName": "Product 9", "price": 52, "counter": 0},
    {"pName": "Product 10", "price": 98, "counter": 0},*/
    {"price": 50, "counter": 0},
    {"price": 70, "counter": 0},
    {"price": 90, "counter": 0},
    { "price": 110, "counter": 0},
    { "price": 40, "counter": 0},
    {"price": 30, "counter": 0},
    {"price": 25, "counter": 0},
    {"price": 45, "counter": 0},
    {"price": 52, "counter": 0},
    {"price": 98, "counter": 0},
  ];
  /*MyAlertDialog(){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Congratulations!"),
                content: Text("You've bought 5 Product of  ${p_info[index]["pName"]}"),

              )
          );
        }
    );
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: ListView.builder(

        itemCount: 10,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('Product ${index+1}'),
            // title: Text("${p_info[index]["pName"]}"),
            subtitle: Text("\$${p_info[index]["price"].toStringAsFixed(2)}"),
            trailing: Column(
              children: [
                Text("Counter: ${p_info[index]["counter"]}"),
                SizedBox(
                  height: 25,
                  child: ElevatedButton(
                      onPressed: (){

                       cnt = p_info[index]["counter"] +=1 ;
                        if(p_info[index]["counter"] == 5){
                          print(cnt);
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Congratulations!"),
                                  content: Text("You've bought 5 Product of Product ${index+1}"),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                    },
                                        child:Text('OK'))
                                  ],
                                );
                                },
                          );
                        };
                        setState(() {});
                      }, child: Text('Buy Now')
                  ),
                ),
              ],
            ),
          );
        },

      ),





      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => Cart()
              )
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
