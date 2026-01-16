import 'package:flutter/material.dart';
import 'constans.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String category;
  final bool sale;
  //final int rating;


  ProductCard({
    required this.image,
    required this.title,
    required this.price,
    required this.category,
    this.sale = false,
   // required this.rating,
  });

  @override
  Widget build(BuildContext context) {
   return Container(
    margin: EdgeInsets.only(bottom: 8),
    padding: EdgeInsets.all(paddingSize),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 230, 190, 255),
      borderRadius: BorderRadius.circular(cardRadius),
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
       // -------- STACK: картинка + SALE badge -------------
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                height: imageHeight,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => 
                Container(
                  height: 120,
                  color: Colors.red,
                  child: Center(child: Text('Ошибка'),),
                ),
              ),
            ),
            if(sale)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('SALE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),),
          ],
        ),
        SizedBox(height: 10),
       // -------- Название + цена (Flexible + Spacer) -------
        Row(
          children: [
            Flexible(
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 3,
                overflow: TextOverflow.visible,
                softWrap: true,
              ),
              ),
              Spacer(),
              Text(
                price,
                style: TextStyle(
                  fontSize: 14,
                  color: priceColor,
                  fontWeight: FontWeight.bold,
                ),
              ),   
          ],
        ),

        SizedBox(height: 6),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(category,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                ),        
        ),

        SizedBox(height: 8),
        Align(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Buy'),
              ),
          ),
        ),

        SizedBox(height: 8),
        Align(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: OutlinedButton(
              onPressed: () {}, 
              child: Text('Favourites'),
              ),
          ),
        ),
      ],
    ),
   );
  }
}