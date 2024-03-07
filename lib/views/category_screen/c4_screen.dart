import 'package:flutter/material.dart';

class c4Screen extends StatelessWidget {
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
                _buildImageContainer(
                    'images/s1.webp', 'Masala Lays', 'Rs.60 PKR'),
                _buildImageContainer(
                    'images/s2.jpg', 'Snack Chocolate', 'Rs.200 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/s3.jpg', 'Eclairs Toffee', 'Rs.800 PKR'),
                _buildImageContainer(
                    'images/s4.jpg', 'Rainbow Lollypop', 'Rs.600 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/s5.webp', 'Cafe Biscuit 12 Pcs', 'Rs.550 PKR'),
                _buildImageContainer(
                    'images/s6.jpg', 'Special Mix Nimko', 'Rs.700 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/s7.jpg', 'Jelly Snack 6 Pcs', 'Rs.1100 PKR'),
                _buildImageContainer('images/s8.jpg', 'Lays Wavy', 'Rs.80 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/s9.png', 'Kit Kat Chocolate', 'Rs.350 PKR'),
                _buildImageContainer(
                    'images/s10.webp', 'Knorr Noodles 4 Pcs', 'Rs.450 PKR'),
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
