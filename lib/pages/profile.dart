import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset('assets/images/image1.jpeg'),
                  CircleAvatar(
                    radius: 50,

                    // backgroundImage: NetworkImage('URL_AVATAR'),
                    // Bạn có thể sử dụng AssetImage cho ảnh từ local assets
                    backgroundImage: AssetImage('assets/images/avata.jpeg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ecogreen account',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'cong.tq194495@sis.hust.edu.vn',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      //
                      // Các thông tin khác của người dùng có thể được hiển thị ở đây
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Xử lý sự kiện khi người dùng chạm vào Container
                     GoRouter.of(context)
                          .push(Uri(path: '/profile/editProfile').toString());
                      // Hoặc thực hiện hành động khác tùy vào yêu cầu của bạn
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200], // Màu nền của background
                        borderRadius:
                            BorderRadius.circular(10), // Độ cong của viền
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // Image.asset('assets/images/image1.jpeg'),
                          const Icon(
                            Icons.person,
                            size: 35,
                          ),
                          // SizedBox(width: 20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Name, phone no, address, email',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              //
                              // Các thông tin khác của người dùng có thể được hiển thị ở đây
                            ],
                          ),
                          const SizedBox(width: 30),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(
                                  255, 215, 223, 228), // Màu của dấu lớn hơn
                            ),
                            padding: const EdgeInsets.all(
                                3), // Kích thước của dấu lớn hơn
                            child: const Icon(
                              Icons.last_page_rounded,
                              color:
                                  Colors.white, // Màu của icon trong dấu lớn hơn
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //container2
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      GoRouter.of(context)
                          .push(Uri(path: '/profile/cardDetails').toString());

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200], // Màu nền của background
                        borderRadius:
                            BorderRadius.circular(10), // Độ cong của viền
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // Image.asset('assets/images/image1.jpeg'),
                          const Icon(
                            Icons.payment,
                            size: 35,
                          ),
                          // SizedBox(width: 20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Card Details',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'bank card information',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              //
                              // Các thông tin khác của người dùng có thể được hiển thị ở đây
                            ],
                          ),
                          const SizedBox(width: 30),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(
                                  255, 215, 223, 228), // Màu của dấu lớn hơn
                            ),
                            padding: const EdgeInsets.all(
                                3), // Kích thước của dấu lớn hơn
                            child: const Icon(
                              Icons.last_page_rounded,
                              color:
                                  Colors.white, // Màu của icon trong dấu lớn hơn
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // container3
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200], // Màu nền của background
                      borderRadius:
                          BorderRadius.circular(10), // Độ cong của viền
                    ),
                    padding: const  EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Image.asset('assets/images/image1.jpeg'),
                        const Icon(
                          Icons.logout,
                          size: 35,
                        ),
                        // SizedBox(width: 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Log Out',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(height: 6),
                            Text(
                              '',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            //
                            // Các thông tin khác của người dùng có thể được hiển thị ở đây
                          ],
                        ),
                        const SizedBox(width: 30),
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(
                                255, 215, 223, 228), // Màu của dấu lớn hơn
                          ),
                          padding: const EdgeInsets.all(
                              3), // Kích thước của dấu lớn hơn
                          child: const Icon(
                            Icons.last_page_rounded,
                            color:
                                Colors.white, // Màu của icon trong dấu lớn hơn
                          ),
                        ),
                      ],
                    ),
                  ),
                  //container 4
                  

                  // kết thúc các container
                ],
              ),
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
            Ink(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber.withOpacity(0.7),
              ),
              child: IconButton(
                hoverColor: Colors.amber.withOpacity(0.7),
                icon: const Icon(Icons.person, color: Colors.green),
                onPressed: () {
                  GoRouter.of(context).push(Uri(path: '/profile').toString());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
