import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/category_screen/detailScreen.dart';

class c2Screen extends StatefulWidget {
  @override
  c2ScreenState createState() => c2ScreenState();
}

class c2ScreenState extends State<c2Screen> {
  double rating = 0.0; // Initialize the rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spring HandBags'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[800],
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Spring HandBags',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/hb1.jpeg',
                    'Pink Rose Hand Bag', 'Rs.4000 PKR', 4.0, 1000),
                _buildImageContainer(context, 'images/hb2.jpg',
                    'Floral Hand Bag', 'Rs.7000 PKR', 5.0, 800),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/hb3.jpg',
                    'Tote Style Bag', 'Rs.4999 PKR', 3.0, 1200),
                _buildImageContainer(context, 'images/hb4.jpg',
                    'Galaxy Bags 3 in 1', 'Rs.6000 PKR', 4.0, 1500),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/hb5.jpg', 'Hand clutch',
                    'Rs.2200 PKR', 5.0, 900),
                _buildImageContainer(context, 'images/hb6.jpg',
                    'GoldShine Hand Bag', 'Rs.5550 PKR', 4.0, 1100),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/hb7.jpg',
                    'Catchy Hand Bag', 'Rs.6500 PKR', 3.0, 1300),
                _buildImageContainer(context, 'images/hb8.jpg',
                    'Solid Leather Bag', 'Rs.11000 PKR', 5.0, 1700),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/hb9.jpg',
                    'Luxury Purple Bag', 'Rs.7500 PKR', 2.0, 950),
                _buildImageContainer(context, 'images/hb10.jpg',
                    'Classy Hand Bag', 'Rs.9000 PKR', 1.0, 850),
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
