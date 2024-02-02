
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SocialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMediaLinks;
  SocialMediaIcon({
    Key? key,
    required this.socialMedia,
    required this.socialMediaLinks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        child: CircleAvatar(
           backgroundImage: AssetImage('assets/$socialMedia'),
           radius: 40,
            ),
            onTap: () {
               
               launchUrl(Uri.parse(socialMediaLinks), mode: LaunchMode.externalApplication);   
                    },
      ),
    );
  }
}
