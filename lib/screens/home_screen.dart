import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(
      //     child: Text(
      //       'URL Launcher used to',
      //       style: TextStyle(
      //         color: Colors.black45,
      //         fontWeight: FontWeight.bold,
      //         fontSize: 30,
      //         fontFamily: 'Serif',
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.grey,
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Connect Me',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 53,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Serif',
                ),
              ),
              const SizedBox(height: 15.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    height: 150,
                    width: 200,
                    child: InkWell(
                      onTap: () {
                        launcher.launchUrl(
                            Uri.parse(
                                'https://www.linkedin.com/in/ankita-soni-17430a221/'),
                            mode: launcher.LaunchMode.externalApplication);
                      },
                      child: const Image(
                        image: AssetImage('icons/linkdin.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    height: 90,
                    width: 120,
                    child: GestureDetector(
                      onTap: () async {
                        Uri ur = Uri.parse('mailto:ankitasoni018@gmail.com');
                        if (!await launcher.launchUrl(ur)) {
                          debugPrint('could not send mail');
                        }
                      },
                      child: const Image(
                        image: AssetImage('icons/gmail.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    height: 150,
                    width: 150,
                    child: GestureDetector(
                      onTap: () async {
                        Uri ur = Uri.parse(
                            'sms:8505073889${Platform.isAndroid ? '?' : '&'}body=Message from app');
                        if (!await launcher.launchUrl(ur)) {
                          debugPrint('could not send sms');
                        }
                      },
                      child: const Image(
                        image: AssetImage('icons/sms.gif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    height: 140,
                    width: 200,
                    child: GestureDetector(
                      onTap: () async {
                        Uri ur = Uri.parse('tel:+918505073889');
                        if (!await launcher.launchUrl(ur)) {
                          debugPrint('NO');
                        }
                      },
                      child: const Image(
                        image: AssetImage('icons/call.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
