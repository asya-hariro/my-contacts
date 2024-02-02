import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/socail_media_icon.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  Map<String,String> socialMedia = {
    'whatsapp.png': 'https://wa.me/+252907788791',
    'facebook.png': 'https://www.facebook.com/ahlam.cabdi.5',
    'istgrm.jpg':'https://www.instagram.com/aysa_abdiwahab/',
    'link.jpg':'https://www.linkedin.com/in/ahlam-cabdiwahab-22796218a/',
  };
  
  @override
  Widget build(BuildContext mycontext) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/aasiyo.JPG'),
                radius: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Asiyo Hariiro',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+252907788791',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                     launchUrl(Uri.parse('tel:+252907788791'));
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: socialMedia.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3) ,
                   itemBuilder: (mcontext, index) {
                    return SocialMediaIcon(socialMedia: socialMedia.keys.toList()[index], socialMediaLinks: socialMedia.values.toList()[index], );
                   },
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   padding: EdgeInsets.all(8),
                   )
            ],
          ),
        ),
      ),
    );
  }
}
