import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/category_screen/detailScreen.dart';

class c4Screen extends StatefulWidget {
  @override
  c4ScreenState createState() => c4ScreenState();
}

class c4ScreenState extends State<c4Screen> {
  double rating = 0.0; // Initialize the rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snacks'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[800],
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Snacks',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/s1.webp', 'Masala Lays',
                    'Rs.60 PKR', 3.0, 1000),
                _buildImageContainer(context, 'images/s2.jpg',
                    'Snack Chocolate', 'Rs.200 PKR', 1.0, 800),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/s3.jpg', 'Eclairs Toffee',
                    'Rs.800 PKR', 3.0, 1200),
                _buildImageContainer(context, 'images/s4.jpg',
                    'Rainbow Lollypop', 'Rs.600 PKR', 4.0, 1500),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/s5.webp',
                    'Cafe Biscuit 12 Pcs', 'Rs.550 PKR', 3.0, 900),
                _buildImageContainer(context, 'images/s6.jpg',
                    'Special Mix Nimko', 'Rs.700 PKR', 2.0, 1100),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/s7.jpg',
                    'Jelly Snack 6 Pcs', 'Rs.1100 PKR', 3.0, 1300),
                _buildImageContainer(context, 'images/s8.jpg', 'Lays Wavy',
                    'Rs.80 PKR', 4.0, 1700),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/s9.png',
                    'Kit Kat Chocolate', 'Rs.350 PKR', 3.0, 950),
                _buildImageContainer(context, 'images/s10.webp',
                    'Knorr Noodles 4 Pcs', 'Rs.450 PKR', 3.0, 850),
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
