import 'package:chungcu/pages/dich_vu.dart';
// import 'package:chungcu/pages/home.dart';
// import 'package:chungcu/pages/payment.dart';
import 'package:chungcu/pages/phan_anh.dart';
import 'package:chungcu/pages/phan_hoi.dart';
// import 'package:chungcu/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Reflect extends StatefulWidget {
  const Reflect({super.key});

  @override
  State<Reflect> createState() => _ReflectState();
}

class _ReflectState extends State<Reflect> {
  int _selectedMenuItem = 0;
   

   final List<Widget> _pages = [
    const PhanAnh(),
    PhanHoi(),
    DichVu(),
  ];
   final List<String> _appBarTitles = [
    'Phản Ánh',
    'Phản Hồi',
    'Dịch Vụ',
  ];

  void _onMenuItemSelected(int index) {
    setState(() {
      _selectedMenuItem = index;
      Navigator.of(context).pop(); // Đóng Drawer sau khi chọn mục
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(_appBarTitles[_selectedMenuItem]),
        // automaticallyImplyLeading: false,
      
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 99, 102, 104),
              ),
              child: Center(
                child: Text(
                  'Chọn mục',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 243, 243),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListTile(
              selected: _selectedMenuItem == 0,
              title: const Text('Phản ánh'),
              onTap: () => _onMenuItemSelected(0),
            ),
            ListTile(
              selected: _selectedMenuItem == 1,
              title: const  Text('Phản hồi'),
              onTap: () => _onMenuItemSelected(1),
            ),
            ListTile(
              selected: _selectedMenuItem == 2,
              title: const Text('Dịch vụ'),
              onTap: () => _onMenuItemSelected(2),
            ),
          ],
        ),
      ),
      body: _pages[_selectedMenuItem],
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
            Ink(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber.withOpacity(0.7),
              ),
              child: IconButton(
                hoverColor: Colors.amber.withOpacity(0.7),
                icon: const Icon(Icons.mark_email_unread_outlined,
                    color: Colors.green),
                onPressed: () {
                  GoRouter.of(context).push(Uri(path: '/reflect').toString());
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.payment),
              onPressed: () {
                GoRouter.of(context).push(Uri(path: '/payment').toString());
              },
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
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Nội dung của Trang chủ',
//         style: TextStyle(fontSize: 24),
//       ),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Nội dung của Hồ sơ',
//         style: TextStyle(fontSize: 24),
//       ),
//     );
//   }
// }

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Nội dung của Cài đặt',
//         style: TextStyle(fontSize: 24),
//       ),
//     );
//   }
// }
