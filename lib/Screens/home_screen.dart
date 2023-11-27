import 'package:first_ecommerce/components/products/list.dart';
import 'package:first_ecommerce/Models/product_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _serachController = TextEditingController();
  List<Product> products = [
    Product(
        name: "shoes",
        dsc: "comfortable",
        image: "assets/images/shoes.jpg",
        price: 250.5),
    Product(
        name: "T-shirt",
        dsc: "comfortable",
        image: "assets/images/t-shirt.jpg",
        price: 250.5),
    Product(
        name: "bag",
        dsc: "comfortable",
        image: "assets/images/bag.jpg",
        price: 250.5),
    Product(
        name: "Laptob",
        dsc: "comfortable",
        image: "assets/images/laptob.jpg",
        price: 250.5),
    Product(
        name: "i-Phone",
        dsc: "iPhone 14 Pro Max",
        image: "assets/images/iphone_.jpg",
        price: 250.5),
    Product(
        name: "Complete Computer",
        dsc: "comfortable",
        image: "assets/images/computer.jpg",
        price: 250.5),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          title: Container(
            height: 65,
            padding: EdgeInsets.all(10),
            child: Center(
              child: TextField(
                controller: _serachController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search Product",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            CircleAvatar(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.purple,
              ),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 11,
            ),
            CircleAvatar(
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.purple,
              ),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 11,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Column(
               children: [
                MyListTemplate(text: "Special for you", products: products)
               ],
             )
            ],
          ),
        ));
  }
}
