import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghumeyho/views/admin_dashboard.dart';
import 'package:ghumeyho/views/landing_page.dart';
import 'package:ghumeyho/views/payment_confirmation_page.dart';
import 'package:ghumeyho/views/payment_page.dart';
import 'package:ghumeyho/views/user_profile_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LandingPage()),
        GetPage(name: '/user-profile', page: () => UserProfileDashboard()),
        GetPage(name: '/admin-dashboard', page: () => AdminDashboard()),
        GetPage(name: '/payment-confirmation', page: () => PaymentConfirmationPage(paymentSlipUrl: '',)),
        GetPage(name: '/payment', page: () => PaymentPage(amount: 200,)),
      ],
    );
  }
}
