import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuUI extends StatefulWidget {
  const MenuUI({super.key});

  @override
  State<MenuUI> createState() => _MenuUIState();
}

// สร้างตัวแปรเก็บรูป menu
class _MenuUIState extends State<MenuUI> {
  List<String> menuShow = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png',
  ];

  List<String> branchShop = [
    'assets/images/shop1.png',
    'assets/images/shop2.png',
    'assets/images/shop3.png',
    'assets/images/shop4.png',
    'assets/images/shop5.png',
  ];

  List<String> shopLocation = [
    'https://www.sau.ac.th',
    'https://www.google.com/maps/@13.8281893,50.4102827,3018m',
    'https://www.google.com/maps/@13.8281893,22.4102827,3018m',
    'https://www.google.com/maps/@13.8281893,76.4102827,3018m',
    'https://www.google.com/maps/@13.8281893,65.4102827,3018m',
  ];

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 24.0,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 190.0,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              'เมนูเด็ด',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menuShow.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        menuShow[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'ร้านในเครือ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: branchShop.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 35,
                        right: 35,
                        bottom: 35,
                      ),
                      child: InkWell(
                        onTap: () {
                          _launchInBrowser(
                            Uri.parse(
                              shopLocation[index],
                            ),
                          );
                        },
                        child: Image.asset(
                          branchShop[index],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
