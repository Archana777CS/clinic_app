// import 'package:flutter/material.dart';
// import 'package:pizza_kitchen/src/core/constants/app_colors.dart';
// import 'package:pizza_kitchen/src/core/constants/app_strings.dart';
// import 'package:pizza_kitchen/src/features/cart/widgets/view_cart_widget.dart';
// import 'package:pizza_kitchen/src/features/pizza/widgets/pizza_list_widget.dart';
// import 'package:pizza_kitchen/src/features/profile/widgets/profile_widget.dart';
// class UserHomePage extends StatefulWidget {
//   const UserHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<UserHomePage> createState() => _UserHomePageState();
// }
//
// class _UserHomePageState extends State<UserHomePage> {
//   static const fragments = [
//     PizzaListWidget(),
//     // OrderWidget(),
//      ViewCartWidget(),
//      ProfileWidget()
//   ];
//   int index = 0;
//   static const title = [
//     AppStrings.home,
//     AppStrings.myOrders,
//     AppStrings.cart,
//     AppStrings.myProfile
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.cardBGColor,
//       appBar: AppBar(leading:const Icon(Icons.menu),
//         backgroundColor: AppColors.blackColor,
//         title: Text(
//           title[index],
//
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         showUnselectedLabels: true,
//         selectedItemColor: AppColors.appBarColor,
//         currentIndex: index,
//         onTap: (value) {
//           setState(() {
//             index = value;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: AppStrings.home,
//               backgroundColor: AppColors.menuColor),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag),
//               label: AppStrings.myOrders,
//               backgroundColor: AppColors.menuColor),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: AppStrings.cart,
//               backgroundColor: AppColors.menuColor),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: AppStrings.myProfile,
//               backgroundColor: AppColors.menuColor),
//         ],
//       ),
//       body: SafeArea(child: fragments[index]),
//     );
//   }
// }
import 'dart:io';

import 'package:clinic_mobile_app/core/constants/app_colors.dart';
import 'package:clinic_mobile_app/core/constants/app_strings.dart';
import 'package:clinic_mobile_app/pages/doctors_list_page.dart';
import 'package:clinic_mobile_app/pages/splash_page.dart';
import 'package:clinic_mobile_app/widgets/detailed_widget.dart';
import 'package:clinic_mobile_app/widgets/profile_widget.dart';
import 'package:clinic_mobile_app/widgets/view_data_widget.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  static List<Widget> fragments = [
    const DetailedWidget(),
    const ViewDataWidget(),
    const ProfileWidget()
  ];
  int index = 0;
  static const title = [AppStrings.user, AppStrings.cart, AppStrings.myProfile];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => exit(0),
              icon: Image.asset('assets/images/dp1.jpg'))
        ],
        backgroundColor: AppColors.mainBGColor,
        title: Text(
          title[index],
          style: TextStyle(
            color: AppColors.appBarColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
          color: AppColors.appBarColor,
        ),
      ),
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            ListTile(
              title: const Text("My Home"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const UserHomePage()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Doctors"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const DoctorsListPage()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("My Profile"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ProfileWidget()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Log Out"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SigninScreen()));
              },
            ),
            const Divider(),
            IconButton(
              onPressed: () {
                if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
                  Navigator.pop(context);
                }
              },
              icon: const Icon(Icons.backspace_rounded),
              color: AppColors.primaryColor,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryColor,
        currentIndex: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppStrings.home,
              backgroundColor: AppColors.menuColor),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/doc.jpg'),
              ),
              label: AppStrings.cart,
              backgroundColor: AppColors.menuColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: AppStrings.myProfile,
              backgroundColor: AppColors.menuColor),
        ],
      ),
      body: SafeArea(child: fragments[index]),
    );
  }
}
