# Flutter Wallet App

A simple wallet application built with Flutter that demonstrates wallet features such as creating wallets, transferring balance, retrieving balance, and requesting airdrops. The app integrates various APIs and showcases state management with Provider and best practices in mobile app development.

## TabLe of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [API Integration](#api-integration)
- [State Management](#state-management)
- [Testing](#testing)
- [License](#license)

## Features

- Login and Token Retrieval
- Create Wallet
- Retrieve Balance
- Transfer Balance
- Request Airdrop
- Network Selection (Polygon Mainnet, Ethereum Mainnet)

 
## Screenshots 

![App Screenshots](.flutterproject\wallet_app\Screenshots app)

## Project Structure

lib/
|- main.dart
|- models/
|   |- wallet.dart
|- providers/
|   |- wallet_provider.dart
|- screens/
|   |- login_screen.dart
|   |- wallet_screen.dart
|- services/
|   |- api_service.dart
|- widgets/
|   |- network_selector.dart
|   |- token_list.dart
|   |- transaction_button.dart
|- utils/
|   |- constants.dart
test/
|- api_service_test.dart
|- wallet_provider_test.dart

## Getting Started
 Prerequisites
  Flutter
  Dart

## Installation
 1. Clone the repository:
       
        
        cd wallet_app

 2. Install dependencies:
        flutter pub get

 3. Run the application:
        flutter run

## API Integration
    This app integrates the following APIs as provided in the Postman API Documentation:

        Create Wallet: POST https://api.socialverseapp.com/solana/wallet/create
        Transfer Balance: POST https://api.socialverseapp.com/solana/wallet/transfer
        Retrieve Balance: GET https://api.socialverseapp.com/solana/wallet/balance
        Request Airdrop: POST https://api.socialverseapp.com/solana/wallet/airdrop
        Login: POST https://api.socialverseapp.com/user/login
            Credentials: {"mixed": "Test" "password": "test-pass"}

## State Management
    The app uses the Provider package for state management. The WalletProvider class handles all wallet operations and API interactions.

## Testing
    To run the tests:
        flutter test

## License
    This project is licensed under the MIT License - see the LICENSE file for details.

