// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_contacts/widgets/social_media_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com/home.php',
    'instagram.png': 'https://www.instagram.com/?hl=ar',
    'whatsapp.png': 'https://wa.me/+201098533243',
    'youtube.png': 'https://www.youtube.com/',
    'linkedin.png': 'https://www.linkedin.com/in/hossam-mohamed-3a052a217/',
    'githup.png': 'https://github.com/hossammohamedawad',
    'twitter.png': 'https://x.com/hossama1996?t=_JZlhtnLQ_BvSbrEtM64ew&s=08',
    'tiktok.png':
        'https://www.tiktok.com/@hossam_mohamed9635?_t=8fn5Ubd04PO&_r=1',
    'telegram.png': 'https://web.telegram.org/a/',
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 7, 30),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/hossam.JPG'),
                  radius: 100,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Hossam Mohamed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '+201098533243',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.phone,
                        size: 32,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('tel:+201098533243'));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                GridView.builder(
                  itemCount: socialMedia.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return socialMediaIcon(
                      socialMedia: socialMedia.keys.toList()[index],
                      socialMedialLink: socialMedia.values.toList()[index],
                    );
                  },
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
