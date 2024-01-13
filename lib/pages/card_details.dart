import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Nhập thông tin Thẻ Ngân hàng:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Số Thẻ ',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Tên chủ thẻ',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Ngày phát hành',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.datetime,
              // obscureText: true,
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // GoRouter.of(context).push(Uri(path: '/profile/cardDetails/xacNhanNH').toString());
                // Xử lý việc liên kết thẻ ngân hàng
                // Đoạn mã xác nhận liên kết thẻ ngân hàng sẽ được thêm ở đây
                 showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Thành công'),
                      content: const Text('Dữ liệu đã được gửi thành công!'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Đóng'),
                          onPressed: () {
                            // _handleSubmit();
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Liên kết Thẻ Ngân hàng'),
            ),
          ],
        ),
      ),
    );
  }
}
