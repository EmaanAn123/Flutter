import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/category_screen/detailScreen.dart';

class c5Screen extends StatefulWidget {
  @override
  _c6ScreenState createState() => _c6ScreenState();
}

class _c6ScreenState extends State<c5Screen> {
  double rating = 0.0; // Initialize the rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crockery'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[800],
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Crockery',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cc1.jpg',
                    'Porcelain Tea Sets', 'Rs.9000 PKR', 4.0, 1000),
                _buildImageContainer(context, 'images/cc5.jpg',
                    'Dinnerware Sets ', 'Rs.8500 PKR', 3.0, 800),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cc3.jpg',
                    'Silicone Utensils', 'Rs.1100 PKR', 3.0, 1200),
                _buildImageContainer(context, 'images/cc4.jpg',
                    'Bowl & Plates Set', 'Rs.1800 PKR', 4.0, 1500),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cc2.png',
                    'Knife Set 6Pcs', 'Rs.350 PKR', 3.0, 900),
                _buildImageContainer(context, 'images/cc6.webp',
                    'Transparent Glass Set', 'Rs.900 PKR', 2.0, 1100),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cc7.jpg', 'Mixing Bowls',
                    'Rs.1470 PKR', 3.0, 1300),
                _buildImageContainer(context, 'images/cc8.webp',
                    'Ceramic Tea Cups', 'Rs.600 PKR', 4.0, 1700),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(context, 'images/cc9.webp',
                    'Steak fork set', 'Rs.660 PKR', 3.0, 950),
                _buildImageContainer(context, 'images/cc10.webp',
                    'Turkish Tray Set', 'Rs.1200 PKR', 3.0, 850),
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
