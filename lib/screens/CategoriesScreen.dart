import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesscreenState();
}

class _CategoriesscreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Coming soon..',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
  }
}
