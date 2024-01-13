import 'package:flutter/material.dart';

class PhanAnh extends StatefulWidget {
   const PhanAnh({super.key});

  @override
  State<PhanAnh> createState() => _PhanAnhState();
}

class _PhanAnhState extends State<PhanAnh> {
   final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController messageController = TextEditingController();

   void _handleSubmit() {
    // Thực hiện xử lý gửi thông tin ở đây...

    // Đặt lại nội dung của các TextFormFields
    nameController.clear();
    emailController.clear();
    messageController.clear();

    // Hiển thị thông báo thành công hoặc thực hiện các hành động khác
    // (ví dụ: hiển thị SnackBar, AlertDialog...)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              onTap: () {
                // FocusScope.of(context).requestFocus(FocusNode());
                // FocusScope.of(context).requestFocus(FocusNode());
              },
              autofocus: true,
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Họ và tên'),
            ),
            TextFormField(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                FocusScope.of(context).requestFocus(FocusNode());
              },

              controller: emailController,
              decoration: const  InputDecoration(labelText: 'Số căn'),
            ),
            TextFormField(
              onTap: () {
                // FocusScope.of(context).requestFocus(FocusNode());
                // FocusScope.of(context).requestFocus(FocusNode());
              },

              controller: messageController,
              maxLines: 5,
              decoration: const InputDecoration(labelText: 'Thông tin phản ánh'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Xử lý gửi thông tin đến admin ở đây
               
                // Thực hiện xử lý dữ liệu và gửi đến admin
                // Ví dụ: in ra thông tin đã nhập để kiểm tra
                
                //  final snackBar = const SnackBar(
                //   content: Text('Dữ liệu đã được gửi thành công!'),
                //   backgroundColor: Color.fromARGB(255, 240, 193, 38),
                // );
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                            _handleSubmit();
                            Navigator.of(context).pop();
                          },
                          
                        ),
                      ],
                    );
                  },
                );
              
             
              },
              child: const Text('Gửi thông tin'),
            ),
          ],
        ),
      ),
    );
    
  }
}
