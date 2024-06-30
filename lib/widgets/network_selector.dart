import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/providers/wallet_provider.dart';

class NetworkSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: Provider.of<WalletProvider>(context).selectedNetwork,
      items: ['Polygon Mainnet', 'Ethereum Mainnet'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        Provider.of<WalletProvider>(context, listen: false)
            .setSelectedNetwork(newValue!);
      },
    );
  }
}
