import 'package:flutter/material.dart';

// Tạo một class riêng để đóng gói thành phần
class CustomNotificationComponent extends StatelessWidget {
  final String notificationText;
  final String buttonText;
  final VoidCallback onPressed;

  const CustomNotificationComponent({super.key, 
    required this.notificationText,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.notifications,
                size: 40.0,
                color: Colors.blue,
              ),
              const SizedBox(height: 10.0),
              Text(
                notificationText,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: onPressed,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
