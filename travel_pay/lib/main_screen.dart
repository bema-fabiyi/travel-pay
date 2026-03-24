// import 'package:flutter/material.dart';
// import 'package:travel_pay/app_colors.dart';
// import 'package:travel_pay/dashboard.dart';
// import 'package:travel_pay/pay_abroad_screen.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int currentIndex = 0;
//   late final List<Widget> screens;

//   @override
//   void initState() {
//     super.initState();
//     screens = [
//       Dashboard(
//         onNavigateToPayments: () {
//           setState(() => currentIndex = 1);
//         },
//       ),
//       const PayAbroadScreen(),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: AppColors.primaryColor,
//         unselectedItemColor: AppColors.unselectedItemColor,
//         backgroundColor: Colors.white,
//         elevation: 10,
//         currentIndex: currentIndex,
//         onTap: (index) {
//           setState(() => currentIndex = index);
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           // BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Cards'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.payments), label: 'Payments'),
//           // BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }
