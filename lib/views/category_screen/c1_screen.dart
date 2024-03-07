import 'package:flutter/material.dart';

class c1Screen extends StatelessWidget {
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
                _buildImageContainer(
                    'images/cb1.jpg', 'On The Glow Blush', 'Rs.2000 PKR'),
                _buildImageContainer(
                    'images/cb2.webp', 'Fine Beauty blender', 'Rs.750 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/cb3.jpg', 'Matte Eyeshadow Palette', 'Rs.3000 PKR'),
                _buildImageContainer(
                    'images/cb4.jpg', 'Curl mascara', 'Rs.1500 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/cb55.jpg', 'Brush Set 7Pcs', 'Rs.2200 PKR'),
                _buildImageContainer(
                    'images/cb6.jpg', 'Velvet Touch Lipsrick', 'Rs.1350 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer('images/cb7.jpg',
                    'Glow Highlighter Palette', 'Rs.1100 PKR'),
                _buildImageContainer(
                    'images/cb8.jpg', 'Soft Kajal Pencil', 'Rs.600 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/cb9.jpg', 'Silk Foundation', 'Rs.5000 PKR'),
                _buildImageContainer(
                    'images/cb10.jpg', 'Compact Powder', 'Rs.1900 PKR'),
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

  Widget _buildImageContainer(String imagePath, String text1, String text2) {
    return Column(
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
          text1,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
