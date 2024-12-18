import 'package:flutter/material.dart';
import 'package:my_contacts/widgets/socialmedia_platform.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required this.myContacts,
  });

  final Map myContacts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: myContacts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return ContactChanelCard(
          platform: myContacts.keys.toList()[index],
          url: myContacts.values.toList()[index],
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(12),
    );
  }
}