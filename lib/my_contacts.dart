// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_contacts/widgets/contacs_grid.dart';
import 'package:my_contacts/widgets/socialmedia_platform.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  final Uri phoneNumber = Uri.parse('tel:+201098533243');
  final Map myContacts = {
    'facebook.png': Uri.parse('https://www.facebook.com/home.php'),
    'instagram.png': Uri.parse('https://www.instagram.com/?hl=ar'),
    'whatsapp.png': Uri.parse('https://wa.me/+201098533243'),
    'youtube.png': Uri.parse('https://www.youtube.com/'),
    'linkedin.png':
        Uri.parse('https://www.linkedin.com/in/hossam-mohamed-3a052a217/'),
    'githup.png': Uri.parse('https://github.com/hossammohamedawad'),
    'twitter.png':
        Uri.parse('https://x.com/hossama1996?t=_JZlhtnLQ_BvSbrEtM64ew&s=08'),
    'tiktok.png': Uri.parse(
        'https://www.tiktok.com/@hossam_mohamed9635?_t=8fn5Ubd04PO&_r=1'),
    'telegram.png': Uri.parse('https://web.telegram.org/a/'),
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
                        launchUrl(phoneNumber);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ContactsGrid(myContacts: myContacts),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
