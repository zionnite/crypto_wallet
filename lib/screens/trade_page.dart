import 'package:bitcoin_app/widgets/header.dart';
import 'package:bitcoin_app/widgets/section_title.dart';
import 'package:flutter/material.dart';

class TradePage extends StatefulWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
          SizedBox(height: 40),
          SectionTitle(title: 'Transactions'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
