import 'dart:ui';

import 'package:flutter/material.dart';
import '../widgets/friend_list_tile.dart';

import '../utils/mock_data.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  int _currentPage = 0; // To keep track of the current page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: Container(
              key: ValueKey<String>(data[
                  _currentPage]), // Key is defined to make sure the Flutter know page os being changed
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    data[_currentPage],
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            heightFactor: 0.50,
            child: PageView.builder(
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              itemCount: friends.length,
              itemBuilder: (context, index) {
                return FractionallySizedBox(
                  widthFactor: 0.90,
                  child: FriendTile(
                    currentPage: _currentPage,
                    imagePath: friends[index]['image'],
                    bio: friends[index]['bio'],
                    title: friends[index]['name'],
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
