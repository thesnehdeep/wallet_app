import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/providers/wallet_provider.dart';

class TokenList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WalletProvider>(
      builder: (context, walletProvider, child) {
        return Expanded(
          child: ListView.builder(
            itemCount: walletProvider.wallet?.tokens.length ?? 0,
            itemBuilder: (context, index) {
              final token = walletProvider.wallet!.tokens[index];
              return ListTile(
                title: Text(token.name),
                subtitle: Text('${token.amount} ${token.symbol}'),
              );
            },
          ),
        );
      },
    );
  }
}
