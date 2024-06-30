import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/providers/wallet_provider.dart';
import 'package:wallet_app/screens/login_screen.dart';
import 'package:wallet_app/screens/wallet_screen.dart';
import 'package:wallet_app/services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WalletProvider(apiService: ApiService()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Wallet App',
        theme: ThemeData.dark(), // Use dark theme for similar UI
        home: WalletScreen(),
      ),
    );
  }
}
