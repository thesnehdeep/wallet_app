import 'package:flutter/material.dart';
import 'package:wallet_app/models/wallet.dart';

class WalletCard extends StatelessWidget {
  final Wallet wallet;

  WalletCard({required this.wallet});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Address: ${wallet.address}'),
        subtitle: Text('Balance: ${wallet.balance}'),
      ),
    );
  }
}
