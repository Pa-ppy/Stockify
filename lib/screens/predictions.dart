import 'package:flutter/material.dart';
import 'package:stockify/screens/search_screen.dart';

class PredictionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tesla',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\$1,200',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Next 7 Days +12%',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            // Placeholder for the graph (1D, 2D, 3D, 4D, 5D)
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[900],
              child: Center(
                child: Text(
                  'Graph Placeholder',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Predictions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            PredictionTile(
              ticker: 'TSLA',
              companyName: 'Tesla Inc',
              price: '\$800',
              confidenceLevel: 'High',
              confidenceValue: 0.9,
            ),
            PredictionTile(
              ticker: 'AAPL',
              companyName: 'Apple Inc',
              price: '\$160',
              confidenceLevel: 'Medium',
              confidenceValue: 0.6,
            ),
          ],
        ),
      ),
    );
  }
}

class PredictionTile extends StatelessWidget {
  final String ticker;
  final String companyName;
  final String price;
  final String confidenceLevel;
  final double confidenceValue;

  PredictionTile({
    required this.ticker,
    required this.companyName,
    required this.price,
    required this.confidenceLevel,
    required this.confidenceValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ticker,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          companyName,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              confidenceLevel,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        LinearProgressIndicator(
          value: confidenceValue,
          backgroundColor: Colors.grey[800],
          color: confidenceLevel == 'High' ? Colors.white : Colors.grey,
          minHeight: 6,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
