import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildImage('images/1.jpg', size: 0),
                SizedBox(width: 10),
                _buildImage('images/2.jpg', size: 120),
                SizedBox(width: 10),
                _buildImage('images/3.jpg', size: 120),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath, {double size = 100}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
