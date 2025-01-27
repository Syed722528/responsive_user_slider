import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_user_slider/utils/mock_data.dart';

class FriendTile extends StatelessWidget {
  const FriendTile({
    super.key,
    required this.imagePath,
    required this.bio,
    required this.title,
    required this.onTap,
    required this.currentPage,

  });

  final String imagePath;
  final String bio;
  final String title;
  final int currentPage;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(data[currentPage]),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 5))
          ],
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
          child: Column(
            spacing: 10,
            children: [
              ClipOval(
                child: Image.asset(
                  imagePath,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 45),
              ),
              Text(
                bio,
                style: const TextStyle(color: Colors.white),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: onTap,
                label: const Text('Send request'),
                icon: const Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ],
          ),
        ));
  }
}
