import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/contact_list.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //web Profile bar
                //web search bar
                ContactsList(),
              ],
            ),
          ),
        ),
        //web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/backgroundImage.png',
                ),
                fit: BoxFit.cover),
          ),
        )
      ],
    ));
  }
}
