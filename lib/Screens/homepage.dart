import 'package:flutter/material.dart';
import 'package:smiling_babies_app/Screens/categories_screen.dart';
import 'package:smiling_babies_app/Screens/search_screen.dart';

class homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<homepage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
            'assets/images/babylogo.png', 
           width: 40, // size of the icon
            height: 40,
          ),
        title: Text('Smiling Babies Uganda'),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/search-icon.png'),
            onPressed: () {
               // Navigate to the SearchScreen when the search icon is clicked
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => searchscreen()),
              );// Handle search action
            },
          ),
          IconButton(
            icon: Image.asset('assets/icons/notifications_icon.png'),
            onPressed: () {
              // Handle notifications action
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Image.asset('assets/icons/home_icon.png',width: 30.0,height: 30.0,), text: 'Home'), 
            Tab(icon: Image.asset('assets/icons/category_icon.png',width: 30.0,height: 30.0,), text: 'Categories'), 
          ],
          onTap: (index) {
            // Handle tab changes if needed
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/icons/home_icon.png',width: 30.0,height: 30.0,), 
              title: Text('Home'),
              onTap: () {
                _tabController.animateTo(0); // Navigate to the "Home" tab
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset('assets/icons/category_icon.png',width: 30.0,height: 30.0,), 
              title: Text('Categories'),
              onTap: () {
                _tabController.animateTo(1); // Navigate to the "Categories" tab
                Navigator.pop(context);
              } ,
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
      body:Container(
        color: Colors.lightBlueAccent,
      child: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(),
          CategoriesScreen(),
          // Add more screens as needed
        ],
      ),
    )
    );

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FeaturedSection(),
          CategoriesSection(),
          ElevatedButton(
            onPressed: () {
              // Navigate to CategoriesScreen when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
            },
            child: Text('Go to Categories'),
          ),
        ],
      ),
    );
  }
}

class FeaturedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle navigation to a featured products screen
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Featured Products',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class CategoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SMILINGBABIES',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Display category grid here
          CategoryGrid(),
        ],
      ),
    );
  }
}

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
          // Handle category item tap
        },
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              width: 100.0, 
              height: 100.0, 
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

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 items per row
        childAspectRatio: 1.0,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        CategoryItem(
          imageAsset: 'assets/images/baby cap.jpg',
          label: 'Clothes',
        ),
        CategoryItem(
          imageAsset: 'assets/images/baby walker.jpg',
          label: 'Toys',
        ),
        CategoryItem(
          imageAsset: 'assets/images/feeding bottles 1.jpg',
          label: 'Feeding Items',
        ),
        CategoryItem(
          imageAsset: 'assets/images/mothers.jpeg',
          label: 'Mother\'s Items',
        ),
        CategoryItem(
          imageAsset: 'assets/images/baby lotion.jpg',
          label: 'Child Care',
        ),
      ],
    );
  }
}
