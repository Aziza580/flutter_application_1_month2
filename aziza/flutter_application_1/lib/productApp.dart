import 'package:flutter/material.dart';
import 'productCard.dart';

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(227, 0, 0, 0),
        appBar: AppBar(
          title: Text('Товары'),
          backgroundColor: const Color.fromARGB(255, 123, 22, 176),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
               // ----------------------- ПЕРВАЯ СТРОКА -----------------------
              Row(
                children: [
                  Expanded(child: ProductCard(
                    image: 'images/nike.jpeg',
                    title: 'Nike Air Max',
                    price: '\$120',
                    category: 'Shoes',
                    sale: true,
                  ),
                  ),
                  SizedBox(width: 12),
                  Expanded(child: ProductCard(
                     image: 'images/bag.jpeg',
                     title: 'Leather Bag',
                     price: '\$85',
                     category: 'Bags',
                  ),
                  ),
                ],
              ),
              SizedBox(height: 16),
               // ----------------------- ВТОРАЯ СТРОКА -----------------------
              Row(
                children: [
                  SizedBox(height: 16),
                  Expanded(child: ProductCard(
                    image: 'images/JBL.jpeg', 
                    title: 'Headphones', 
                    price: '\$210',
                    category: 'Audio',
                    sale: true,
                    ),
                    ),

                    SizedBox(width: 12),
                    Expanded(child: ProductCard(
                    image: 'images/watches.jpeg', 
                    title: 'Smart Watch', 
                    price: '\$150',
                    category: 'Gadgets',
                    ),
                    ),
                ],
              ),
            ],
          ),
          ),
      ),
    );
  }
}