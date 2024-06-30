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

```plaintext
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

