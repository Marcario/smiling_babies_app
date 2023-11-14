import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String imageAsset;
  final String label;

  CategoryItem({required this.imageAsset, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          //To Handle category item tap
        },
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 4.0),
            Text(
              label,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
