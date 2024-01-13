import 'package:chungcu/pages/card_details.dart';
import 'package:chungcu/pages/details_new.dart';
import 'package:chungcu/pages/eco_payment.dart';
import 'package:chungcu/pages/edit_profile.dart';
import 'package:chungcu/pages/history_payment.dart';
// import 'package:chungcu/pages/phan_anh.dart';
// import 'package:chungcu/pages/phan_hoi.dart';
import 'package:chungcu/pages/reflect.dart';
// import 'package:chungcu/pages/notification.dart';
import 'package:chungcu/pages/error.dart';
import 'package:chungcu/pages/home.dart';
import 'package:chungcu/pages/payment.dart';
import 'package:chungcu/pages/profile.dart';
import 'package:chungcu/pages/transaction.dart';
// import 'package:chungcu/pages/xac_nhan_NH.dart';
import 'package:chungcu/project/routes/app_route_const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouterContants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: MyAppRouterContants.paymentRouteName,
          path: '/payment',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Payment());
          },
        ),
        GoRoute(
          name: MyAppRouterContants.reflectRouteName,
          path: '/reflect',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Reflect());
          },
        ),
        // GoRoute(
        //   name: MyAppRouterContants.notificationRouteName,
        //   path: '/notification',
        //   pageBuilder: (context, state) {
        //     return  MaterialPage(child: Notification());
        //   },
        // ),
        GoRoute(
          name: MyAppRouterContants.profileRouteName,
          path: '/profile',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Profile());
          },
        ),
        GoRoute(
          name: MyAppRouterContants.detailsNew,
          path: '/home/detailsNew',
          pageBuilder: (context, state) {
            return const MaterialPage(child: DetailsNew());
          },
        ),
        GoRoute(
          name: MyAppRouterContants.editProfile,
          path: '/profile/editProfile',
          pageBuilder: (context, state) {
            return  const MaterialPage(child: EditProfile());
          },
        ),
        GoRoute(
          name: MyAppRouterContants.cardDetails,
          path: '/profile/cardDetails',
          pageBuilder: (context, state) {
            return const MaterialPage(child: CardDetails());
          },
        ),
        // GoRoute(
        //   name: MyAppRouterContants.xacNhanNH,
        //   path: '/profile/cardDetails/xacNhanNH',
        //   pageBuilder: (context, state) {
        //     // return  MaterialPage(child: XacNhanNH());
        //   },
        // ),
        GoRoute(
          name: MyAppRouterContants.ecoPayment,
          path: '/payment/ecoPayment',
          pageBuilder: (context, state) {
            return const MaterialPage(child: EcoPayment());
          },
        ),
        GoRoute(
          name: MyAppRouterContants.transaction,
          path: '/payment/ecoPayment/transaction',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Transaction());
          },
        ),
        GoRoute(
          name: MyAppRouterContants.historyPayment,
          path: '/payment/ecoPayment/transaction/historyPayment',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HistoryPayment());
          },
        ),
        // GoRoute(
        //   name: MyAppRouterContants.phanAnh,
        //   path: '/reflect/phanAnh',
        //   pageBuilder: (context, state) {
        //     return const MaterialPage(child: PhanAnh());
        //   },
        // ),
        // GoRoute(
        //   name: MyAppRouterContants.phanHoi,
        //   path: '/reflect/phanHoi',
        //   pageBuilder: (context, state) {
        //     return const MaterialPage(child: PhanHoi());
        //   },
        // ),
        // GoRoute(
        //   name: MyAppRouterContants.reflectRouteName,
        //   path: '/reflect/dichVu',
        //   pageBuilder: (context, state) {
        //     return const MaterialPage(child: DichVu());
        //   },
        // ),

      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      },
    );
    return router;
  }
}
