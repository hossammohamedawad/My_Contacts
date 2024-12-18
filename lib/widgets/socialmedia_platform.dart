// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactChanelCard extends StatelessWidget {
  String platform;
  Uri url;
  ContactChanelCard({
    Key? key,
    required this.platform,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/$platform',),
          radius: 30,
          backgroundColor: Colors.transparent,
        ),
        onTap: () {
          launchUrl(url,
              mode: LaunchMode.externalApplication);
        },
      ),
    );
  }
}
