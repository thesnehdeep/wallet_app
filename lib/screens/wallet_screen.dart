import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/providers/wallet_provider.dart';
import 'package:wallet_app/widgets/network_selector.dart';
import 'package:wallet_app/widgets/token_list.dart';
import 'package:wallet_app/widgets/transaction_button.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code),
            onPressed: () {
              // TODO: Implement QR code functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NetworkSelector(),
            SizedBox(height: 20),
            Consumer<WalletProvider>(
              builder: (context, walletProvider, child) {
                return Text(
                  'Total Balance: ${walletProvider.wallet?.balance ?? 0.0}',
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                TransactionButton(
                  title: 'Send',
                  color: Colors.blue,
                  onPressed: () {
                    // TODO: Implement Send functionality
                  },
                ),
                SizedBox(width: 10),
                TransactionButton(
                  title: 'Swap',
                  color: Colors.red,
                  onPressed: () {
                    // TODO: Implement Swap functionality
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Tokens',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TokenList(),
          ],
        ),
      ),
    );
  }
}
