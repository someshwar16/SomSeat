import 'package:flutter/material.dart';
import 'package:som_seat_selection/screens/selection_page.dart';
import 'package:som_seat_selection/provider/select_button_provider.dart';
import 'package:provider/provider.dart';
import 'package:som_seat_selection/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ButtonProvider()),
      ],
      child: const MaterialApp(
        title: 'Seat Selection',
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      ),
    );
  }
}
