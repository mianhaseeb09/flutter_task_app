import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Coming soon..',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
  }
}
