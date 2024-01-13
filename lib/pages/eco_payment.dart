import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';

class EcoPayment extends StatelessWidget {
  const EcoPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eco Payment')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          height: 80,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Row(
            children: <Widget>[
              Icon(
                Icons.payment,
                size: 40.0,
                color: Colors.blue,
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Ví điện tử Eco',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Số dư : 3.000.686đ',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.grey[200], // Màu sắc của container lớn
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Container bên trái
            Container(
              // color: Colors.blueGrey, // Màu sắc của container nhỏ bên trái
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thành tiền ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 45, 45, 42),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '1.800.000',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 18, 17),
                    ),
                  ),
                ],
              ),
            ),
            // Container bên phải
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
                GoRouter.of(context).push(Uri(path: '/payment/ecoPayment/transaction').toString());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[500], // Màu sắc của nút
                padding: const  EdgeInsets.all(14.0),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.wallet_travel,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Thanh toán',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),    
    );
  }
}
