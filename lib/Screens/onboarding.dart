import 'package:flutter/material.dart';
import 'package:smiling_babies_app/screens/login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final List<OnboardingItem> _onboardingItems = [
    OnboardingItem(
      title: "Mother and Baby",
      description: "A world of love and care for both mothers and little ones. Discover essentials and adorable outfits designed to make your journey of motherhood even more special",
      image: "assets/images/onboardingscreen1.jpg",
    ),
    OnboardingItem(
      title: "Baby Toys",
      description: "Explore a world of fun and educational toys for your little one. From cuddly companions to interactive playthings, we offer a delightful range of toys to spark joy and learning.",
      image: "assets/images/onboardingscreen2.jpg",
    ),
    OnboardingItem(
      title: "Get Started",
      description: "Discover essential products and tips for the well-being of your baby. From diapers to soothing items, we're here to support you in providing the best care for your little one!",
      image: "assets/images/onboardingscreen3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.lightBlueAccent, 
            child: PageView.builder(
              controller: _pageController,
              itemCount: _onboardingItems.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingItemWidget(_onboardingItems[index]);
              },
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage > 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.black), // Set the text color
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage < _onboardingItems.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else {
                      // Navigate to the login screen when the "Get Started" button is tapped
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
                    }
                  },
                  child: Text(
                    _currentPage < _onboardingItems.length - 1 ? 'Next' : 'Get Started',
                    style: TextStyle(color: Colors.black), // Set the text color
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String image;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingItemWidget extends StatelessWidget {
  final OnboardingItem item;

  OnboardingItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(item.image, height: 250),
        SizedBox(height: 20),
        Text(
          item.title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black, 
          ),
        ),
        SizedBox(height: 20),
        Text(
          item.description,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black, 
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
