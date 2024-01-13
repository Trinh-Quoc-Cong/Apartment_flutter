import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaction Results'),
      
      leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            
                  GoRouter.of(context).push(Uri(path: '/payment').toString());
            
          },
        ),
        ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
              const SizedBox(height: 20),
              const Text(
                'Giao dịch thanh toán đã thành công!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Số tiền thanh toán:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('1.800,000đ'), // Giá trị số tiền thanh toán
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nội dung thanh toán:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('tiền điện nước 20/10/2023'), // Nội dung thanh toán
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mã giao dịch:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('ABC123XYZ'), // Mã giao dịch
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Xử lý khi lịch sử chi tiết được nhấn
                  GoRouter.of(context).push(Uri(path: '/payment/ecoPayment/transaction/historyPayment').toString());
                 
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chi tiết:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Đã thanh toán vào 15/12/2023', // Lịch sử chi tiết
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Expanded(
              flex: 9, // Chia tỷ lệ 9/10 cho ElevatedButton
              child: ElevatedButton(
                onPressed: () {
                  // Xử lý khi nút được nhấn
                  // Ví dụ: điều hướng đến màn hình khác
                  GoRouter.of(context).push(Uri(path: '/payment').toString());

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 90, 107, 239), // Màu sắc của nút
                  padding: const EdgeInsets.all(15.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    SizedBox(width: 10.0),
                    Text(
                      'Hoàn tất',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
