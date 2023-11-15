import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactus extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Get in Touch with Smiling'
                       'Babies Uganda',
                
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                
                'Connect with us on social media:',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/icons/facebook.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {
                    _launchURL('https://www.facebook.com/784480435083097/posts/smiling-babies-uganda-located-atfrench-plazashop-nog95-ground-floor-opposite-qua/1253736631490806/');
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/whatsapp.jpeg',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {
                    _launchURL('https://wa.me/+256784317565');
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/instagram.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {
                    _launchURL('https://www.instagram.com/p/CjFpNOOrhUc/');
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Contact Information:',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/icons/phone.jpg',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {
                    _launchURL('tel:+25689555054');
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/location_on.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {
                    _launchURL('https://www.google.com/maps/place/Smiling+babies+uganda/@0.3129562,32.5744615,15z/data=!4m6!3m5!1s0x177dbd9b63818e4d:0xaba4031a6ae5f6d5!8m2!3d0.3129562!4d32.5744615!16s%2Fg%2F11j4w4dx8h?entry=ttu');
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/email.jpg',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {
                    _launchURL('mailto:christinenalubwama4@gmail.com');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




