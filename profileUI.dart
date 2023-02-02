import 'package:flutter/material.dart';

class ProfileUi extends StatefulWidget {
  const ProfileUi({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  State<ProfileUi> createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  late String _defaultImg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(_defaultImg),
                radius: 350,
              ),
            ),
            const Divider(
              height: 90,
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}
