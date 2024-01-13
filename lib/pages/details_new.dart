import 'package:flutter/material.dart';

class DetailsNew extends StatelessWidget {
  const DetailsNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DetailsNew')),
      body: const Row(
        children: [
          Center(
            child: Text('DetailsNew'),
          ),
        ],
      ),
      
    );
  }
}
