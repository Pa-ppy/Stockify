import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: DropdownButton<String>(
          value: 'AMZN',
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
          underline: SizedBox(),
          dropdownColor: Colors.black,
          items: <String>['AMZN', 'AAPL', 'GOOGL']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: TextStyle(color: Colors.white)),
            );
          }).toList(),
          onChanged: (_) {},
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Stock price and chart
            Text(
              'Amazon',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '\$109.43',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              'Today +2%',
              style: TextStyle(color: Colors.greenAccent, fontSize: 18),
            ),
            SizedBox(height: 16),
            Container(
              height: 150,
              color: Colors.grey[850], // Placeholder for stock chart
              child: Center(
                  child: Text('Stock Chart',
                      style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTimeRangeButton('1D'),
                _buildTimeRangeButton('1W'),
                _buildTimeRangeButton('1M'),
                _buildTimeRangeButton('3M'),
                _buildTimeRangeButton('1Y'),
              ],
            ),
            SizedBox(height: 24),

            // About Section
            Text(
              'About Amazon',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Amazon is a multinational technology company, which engages in the provision of online retail shopping services.',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 16),
            _buildInfoRow('CEO', 'Andrew Jassy'),
            _buildInfoRow('Founded', '1994'),
            _buildInfoRow('Employees', '1,608,000'),
            _buildInfoRow('Headquarters', 'Seattle, Washington'),
            SizedBox(height: 24),

            // Stats Section
            Text(
              'Stats',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildInfoRow('Open', '83.13'),
            _buildInfoRow('High', '84'),
            _buildInfoRow('Low', '82'),
            _buildInfoRow('52 Wk High', '171'),
            _buildInfoRow('52 Wk Low', '81.59'),
            _buildInfoRow('Volume', '62.4M'),
            _buildInfoRow('Avg vol', '73M'),
            _buildInfoRow('Mkt cap', '687B'),
            _buildInfoRow('P/E ratio', '77.14'),
            _buildInfoRow('Div yield', '-'),
            SizedBox(height: 24),

            // News Section
            Text(
              'News',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildNewsItem(
                'MarketWatch • 2d',
                'This company has wiped more investor wealth than Tesla',
                'AMZN +4%'),
            _buildNewsItem(
                'CNBC • 8d',
                'Best stock picks of the year. Wall Street is bullish on retail for Christmas.',
                'AMZN +4%'),
            _buildNewsItem(
                'Fortune • 4d',
                'Best investment advice of 2023. Amazon is at the top of the list.',
                'AMZN +4%'),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeRangeButton(String label) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[850],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {},
      child: Text(label),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsItem(String source, String headline, String change) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 70,
            color: Colors.grey[850], // Placeholder for news image
            child: Center(child: Icon(Icons.image, color: Colors.white)),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  source,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                SizedBox(height: 4),
                Text(
                  headline,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  change,
                  style: TextStyle(color: Colors.greenAccent, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
