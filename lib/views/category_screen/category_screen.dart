import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/category_screen/c1_screen.dart';
import 'package:flutter_application_1/views/category_screen/c2_screen.dart';
import 'package:flutter_application_1/views/category_screen/c3_screen.dart';
import 'package:flutter_application_1/views/category_screen/c4_screen.dart';
import 'package:flutter_application_1/views/category_screen/c5_screen.dart';
import 'package:flutter_application_1/views/category_screen/c6_screen.dart';
// Import other screens as needed

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[800],
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryContainer(context, "images/c1.webp",
                      "Beauty Cosmetics", c1Screen()),
                  SizedBox(width: 20),
                  _buildCategoryContainer(
                      context, "images/c2.jpg", "Spring HandBags", c2Screen()),
                ],
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryContainer(
                      context, "images/c3.jpg", "Toys", c3Screen()),
                  SizedBox(width: 14),
                  _buildCategoryContainer(
                      context, "images/c4.webp", "Candies", c4Screen()),
                ],
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryContainer(
                      context, "images/c5.jpg", "Crockery", c5Screen()),
                  SizedBox(width: 14),
                  _buildCategoryContainer(
                      context, "images/c6.jpeg", "Soft Drinks", c6Screen()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryContainer(
      BuildContext context, String imagePath, String text, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
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
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
