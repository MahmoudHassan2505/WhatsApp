import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/widgets/contact_list.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              "Whatsapp",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
            bottom: const TabBar(
              indicatorColor: tabColor,
              labelColor: tabColor,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: "Chat"),
                Tab(text: "Status"),
                Tab(text: "Calls"),
              ],
            ),
          ),
          body: ContactsList(),
        ));
  }
}
