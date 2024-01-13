import 'package:chungcu/models/image_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FocusNode _searchFocusNode = FocusNode();
  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Xin Chào EcoGreen City!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle), // Icon avatar
            onPressed: () {
              GoRouter.of(context).push(Uri(path: '/profile').toString());
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: GestureDetector(
        onTap: () {
          // Khi người dùng nhấp bên ngoài, đóng bàn phím
          if (_searchFocusNode.hasFocus) {
            _searchFocusNode.unfocus();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                focusNode: _searchFocusNode,
                decoration: const InputDecoration(
                  labelText: 'Search',
                  hintText: 'Enter search keywords',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onTap: () {
                  // Khi TextField được nhấp vào, hiển thị bàn phím
                  _searchFocusNode.requestFocus();
                },
                onChanged: (value) {
                  // Thực hiện hành động khi giá trị trong TextField thay đổi
                  // Ví dụ: Tìm kiếm khi giá trị thay đổi
                },
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .push(Uri(path: '/home/detailsNew').toString());
                        // Thực hiện hành động khi hình ảnh được nhấp vào
                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imageList[index].imagePath,
                              fit: BoxFit.fill,
                              height: 330,
                              // Chiều cao của hình ảnh
                              width: double.infinity, // Rộng bằng toàn bộ card
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    imageList[index].title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow
                                        .ellipsis, // Cắt bớt nội dung nếu quá dài
                                    maxLines: 1, // Số dòng tối đa
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    imageList[index].time,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Các phần nội dung khác của body ở đây
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Ink(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber.withOpacity(0.7),
              ),
              child: IconButton(
                hoverColor: Colors.amber.withOpacity(0.7),
                icon: const Icon(Icons.home, color: Colors.green),
                onPressed: () {
                  GoRouter.of(context).push(Uri(path: '/').toString());
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.mark_email_unread_outlined),
              onPressed: () {
                GoRouter.of(context).push(Uri(path: '/reflect').toString());
              },
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
