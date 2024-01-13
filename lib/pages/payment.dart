import 'package:chungcu/models/payment_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text('Payment'),
        automaticallyImplyLeading: false,
      ),
      body: CustomNotificationComponent(
        notificationText: 'Thông báo tiền điện nước 20/10/2023: +1.800.000đ',
        buttonText: 'Thanh toán qua ví Eco',
        onPressed: () {
          GoRouter.of(context)
              .push(Uri(path: '/payment/ecoPayment').toString());
          // Xử lý khi nút được nhấn
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                GoRouter.of(context).push(Uri(path: '/').toString());
              },
            ),
            IconButton(
              icon: const Icon(Icons.mark_email_unread_outlined),
              onPressed: () {
                GoRouter.of(context).push(Uri(path: '/reflect').toString());
              },
            ),
            Ink(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber.withOpacity(0.7),
              ),
              child: IconButton(
                hoverColor: Colors.amber.withOpacity(0.7),
                icon: const Icon(Icons.payment, color: Colors.green),
                onPressed: () {
                  GoRouter.of(context).push(Uri(path: '/payment').toString());
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                GoRouter.of(context)
                    .push(Uri(path: '/notification').toString());
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                GoRouter.of(context).push(Uri(path: '/profile').toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
