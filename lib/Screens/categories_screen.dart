
import 'package:flutter/material.dart';
import 'package:smiling_babies_app/Screens/contactus.dart';
import 'package:smiling_babies_app/Screens/orders_screen.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => contactus()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/icons/phone.jpg', 
                width: 30,
                height: 30,
                
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClothesCategory(),
            ToysCategory(),
            FeedingBottlesCategory(),
            MothersCategory(),
            ChildCareCategory(),
          ],
        ),
      ),
    );
  }
}

class ContactUsPage {
}


class CategoryGrid extends StatelessWidget {
  final List<CategoryItem> categoryItems;

  CategoryGrid({required this.categoryItems});

 @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: categoryItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // screen size
        childAspectRatio: 0.8, //  for image to fit better
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: categoryItems[index],
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imageAsset;
  final String label;
  final String description;
  final double price;

  CategoryItem({
    required this.imageAsset,
     required this.label,
    required this.description,
    required this.price,});

  @override
  Widget build(BuildContext context) {
     // Calculate the width based on screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 32) / 2; // Two items per row with padding
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
         // To Handle category item tap
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => order_screen(itemName: 'Clothes'),
            ),
          ); // Handle category item tap
        },
       
         child: Padding(
          padding: EdgeInsets.fromLTRB(12.0, 12.0, 8.0, 8.0),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              width: 63.0,
              height: 63.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Text(
              label,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            Text(
              description,
              style: TextStyle(fontSize: 12.0),
            ),
            Text(
              '\$$price',
              style: TextStyle(fontSize: 12.0),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle order button tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => order_screen(itemName: 'Clothes'),
                  ),
                );
              },
              child: Text('Order'),
            ),
            
          ],
        ),
      ),
      )
    );
  }
}

class ClothesCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Clothes',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        CategoryGrid(
          categoryItems: [
            CategoryItem(
              imageAsset: 'assets/images/overalls.jpg',
            label: 'overalls',
            description: '',
              price: 29.99
            ),

            CategoryItem(
              imageAsset: 'assets/images/boywear.png',
              label: 'boy wear',
               description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/baby sac.png',
              label: 'Clothing Item 3',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/girl wear.png',
              label: 'Clothing Item 4',
                description: '', 
               price:2000,
            ),
            // Add more clothing items as needed
          ],
        ),
      ],
    );
  }
}

class ToysCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Toys',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        CategoryGrid(
          categoryItems: [
            CategoryItem(
              imageAsset: 'assets/images/shakers.jpg',
              label: 'shakers',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/crib bells.jpg',
              label: 'crib bells',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/baby tricycle.png',
              label: 'Tricycle',
                description: '', 
               price:2000,

            ),
            CategoryItem(
              imageAsset: 'assets/images/baby walker.jpg',
              label: 'Baby walker',
                description: '', 
               price:2000,
            ),
            // Add more toy items as needed
          ],
        ),
      ],
    );
  }
}

class FeedingBottlesCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Feeding Bottles',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        CategoryGrid(
          categoryItems: [
            CategoryItem(
              imageAsset: 'assets/images/feeding bottles 1.jpg',
              label: 'Feeding Bottle',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/bottles.png',
              label: ' Bottles ',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/single bottles.png',
              label: 'Single bottles',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/starter bottles.png',
              label: 'Starters',
                description: '', 
               price:2000,
            ),
            // Add more feeding bottle items as needed
          ],
        ),
      ],
    );
  }
}

class MothersCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mothers',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        CategoryGrid(
          categoryItems: [
            CategoryItem(
              imageAsset: 'assets/images/pregnancy pillow.jpg',
              label: 'Pregnancy pillow',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/labour suit.jpeg',
              label: 'Labour suit',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/cotton wool.png',
              label: 'Cotton wool',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/maternity dress.jpg',
              label: 'Maternity dress',
                description: '', 
               price:2000,
            ),
            // Add more mother items as needed
          ],
        ),
      ],
    );
  }
}

class ChildCareCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Child Care',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        CategoryGrid(
          categoryItems: [
            CategoryItem(
              imageAsset: 'assets/images/himalaya.png',
              label: 'Himalaya lotion',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/care kit.jpg',
              label: 'Baby care kit',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/baby lotion.jpg',
              label: 'Skin care lotion',
                description: '', 
               price:2000,
            ),
            CategoryItem(
              imageAsset: 'assets/images/cussons.jpg',
              label: 'cussons kit',
                description: '', 
               price:2000,
            ),
            // Add more child care items as needed
          ],
        ),
      ],
    );
  }
}
