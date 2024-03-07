import 'package:flutter/material.dart';

class c5Screen extends StatelessWidget {
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
                _buildImageContainer(
                    'images/cc1.jpg', 'Porcelain Tea Sets', 'Rs.9000 PKR'),
                _buildImageContainer(
                    'images/cc2.png', 'Knife Set 6Pcs', 'Rs.350 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/cc3.jpg', 'Silicone Utensils', 'Rs.1100 PKR'),
                _buildImageContainer(
                    'images/cc4.jpg', 'Bowl & Plates Set', 'Rs.1800 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/cc5.jpg', 'Dinnerware Sets ', 'Rs.8500 PKR'),
                _buildImageContainer(
                    'images/cc6.webp', 'Transparent Glass Set', 'Rs.900 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/cc7.jpg', 'Mixing Bowls', 'Rs.1470 PKR'),
                _buildImageContainer(
                    'images/cc8.webp', 'Ceramic Tea Cups', 'Rs.600 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/cc9.webp', 'Steak fork set', 'Rs.660 PKR'),
                _buildImageContainer(
                    'images/cc10.webp', 'Turkish Tray Set', 'Rs.1200 PKR'),
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
