import 'package:flutter/material.dart';
import 'package:stockify/screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending'),
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
        ],
        backgroundColor: Colors.black, // Added for consistency
      ),
      backgroundColor: Colors.black, // Set the Scaffold background to black
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Meta Platforms',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white), // Color adjusted to white
            ),
            SizedBox(height: 4),
            const Text(
              '\$1,200.72',
              style: TextStyle(
                  fontSize: 16, color: Colors.white), // Color adjusted to white
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(
                    255, 50, 50, 50), // Adjusted to a darker shade
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Stock Price',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white), // Color adjusted to white
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '\$1,200.72',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white), // Color adjusted to white
                  ),
                  const Text(
                    'Last 30 Days +12%',
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(height: 20),
                  // Chart Placeholder
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.grey[800],
                    child: const Center(
                      child: Text(
                        'Chart Placeholder',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Predictions',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white), // Color adjusted to white
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildPredictionCard('75%', 'Buy', Icons.arrow_upward),
                buildPredictionCard('20%', 'Hold', Icons.remove),
                buildPredictionCard('5%', 'Sell', Icons.arrow_downward),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Forecast',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white), // Color adjusted to white
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildForecastCard('\$1,000.00', 'Current'),
                buildForecastCard('\$1,250.00', 'Forecast'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPredictionCard(String percentage, String label, IconData icon) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black54,
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 10),
          Text(
            percentage,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white), // Color adjusted to white
          ),
          const SizedBox(height: 5),
          Text(label,
              style: TextStyle(color: Colors.white)), // Color adjusted to white
        ],
      ),
    );
  }

  Widget buildForecastCard(String value, String label) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black54,
      ),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white), // Color adjusted to white
          ),
          SizedBox(height: 5),
          Text(label,
              style: TextStyle(color: Colors.white)), // Color adjusted to white
        ],
      ),
    );
  }
}
