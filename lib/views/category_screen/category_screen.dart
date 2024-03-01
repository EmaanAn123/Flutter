import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[500],
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryContainer("images/c1.webp", "Beauty Cosmetics"),
                  SizedBox(width: 20),
                  _buildCategoryContainer("images/c2.jpg", "Spring HandBags"),
                ],
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryContainer("images/c3.jpg", "Toys"),
                  SizedBox(width: 14),
                  _buildCategoryContainer("images/c4.webp", "Candies"),
                ],
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryContainer("images/c5.jpg", "Crockery"),
                  SizedBox(width: 14),
                  _buildCategoryContainer("images/c6.jpeg", "Soft Drinks"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryContainer(String imagePath, String text) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
