import 'package:first_ecommerce/Models/product_model.dart';
import 'package:flutter/material.dart';

class MyListTemplate extends StatelessWidget {
  final String text;
  final List<Product> products;

  const MyListTemplate({super.key, required this.text, required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 19, top: 30,bottom: 30),
              child: Text(
                text,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>Container(height: 500,
                child: Row(
                  children: [
                    Card(
                      color: Colors.grey[200],
                      child: Image.asset(products[index].image!,width: 150,)),
                      SizedBox(width: 15,)
                  ],
                ),
              ),
              itemCount: products.length,),
          ),

      
          
        ],
      ),
    );
  }
}
