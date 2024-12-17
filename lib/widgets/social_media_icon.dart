// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class socialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMedialLink;
  socialMediaIcon({
    Key? key,
    required this.socialMedia,
    required this.socialMedialLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/$socialMedia'),
          radius: 30,
          backgroundColor: Colors.transparent,
        ),
        onTap: () {
          launchUrl(Uri.parse(socialMedialLink),
              mode: LaunchMode.externalApplication);
        },
      ),
    );
  }
}
