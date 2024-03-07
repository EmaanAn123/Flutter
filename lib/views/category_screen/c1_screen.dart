import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/category_screen/detailScreen.dart';

class c1Screen extends StatefulWidget {
  @override
  c1ScreenState createState() => c1ScreenState();
}

class c1ScreenState extends State<c1Screen> {
  double rating = 0.0; // Initialize the rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beauty Cosmetics'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[800],
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Beauty Cosmetics',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cb1.jpg',
                    'On The Glow Blush', 'Rs.2000 PKR', 4.0, 1000),
                _buildImageContainer(context, 'images/cb2.webp',
                    'Fine Beauty blender', 'Rs.750 PKR', 2.0, 800),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cb3.jpg',
                    'Matte Eyeshadow Palette', 'Rs.3000 PKR', 3.0, 1200),
                _buildImageContainer(context, 'images/cb4.jpg', 'Curl mascara',
                    'Rs.1500 PKR', 1.0, 1500),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cb55.jpg',
                    'Brush Set 7Pcs', 'Rs.2200 PKR', 5.0, 900),
                _buildImageContainer(context, 'images/cb6.jpg',
                    'Velvet Touch Lipsrick', 'Rs.1350 PKR', 1.0, 1100),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cb7.jpg',
                    'Glow Highlighter Palette', 'Rs.1100 PKR', 3.0, 1300),
                _buildImageContainer(context, 'images/cb8.jpg',
                    'Soft Kajal Pencil', 'Rs.600 PKR', 4.0, 1700),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cb9.jpg',
                    'Silk Foundation', 'Rs.5000 PKR', 2.0, 950),
                _buildImageContainer(context, 'images/cb10.jpg',
                    'Compact Powder', 'Rs.1900 PKR', 5.0, 850),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildImageContainer(BuildContext context, String imagePath,
      String name, String price, double rating, int views) {
    return GestureDetector(
      onTap: () {
        // Navigate to the detail page when the image is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              imagePath: imagePath,
              name: name,
              price: price,
              initialRating: rating,
              views: views,
              onRatingChanged: (newRating) {
                // Update the rating in c6Screen
                setState(() {
                  this.rating = newRating;
                });
              },
            ),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
