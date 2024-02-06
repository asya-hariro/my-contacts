import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class StartSocailMedia extends StatelessWidget {
   String socialMediaLinks;
   
  StartSocailMedia({Key? key,
    required this.socialMediaLinks,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar (backgroundColor: Colors.transparent,),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange)
          ),
          onPressed: (){
           launchUrl(Uri.parse(socialMediaLinks), mode: LaunchMode.externalApplication);  
            }, child: const Text('Start Socail Media')),
      ),
    );
  }
}