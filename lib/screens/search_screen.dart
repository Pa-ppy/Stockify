import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[900],
                  hintText: 'Search stock, crypto, ETF...',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Trending Lists',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  TrendingChip(label: 'Newly Listed Crypto'),
                  TrendingChip(label: '100 Most Popular'),
                  TrendingChip(label: 'New OTC securities'),
                  TrendingChip(label: 'Crypto'),
                  TrendingChip(label: 'IPO Access'),
                  TrendingChip(label: 'Altcoins'),
                  TrendingChip(label: 'Daily Movers'),
                  TrendingChip(label: 'Bitcoins'),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Discover more',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              DiscoverMoreSection(),
              SizedBox(height: 20),
              StockListTile(
                  ticker: 'AAPL', companyName: 'Apple Inc.', price: '\$150.86'),
              StockListTile(
                  ticker: 'AMZN',
                  companyName: 'Amazon.com Inc.',
                  price: '\$3,324.00'),
              StockListTile(
                  ticker: 'GOOGL',
                  companyName: 'Alphabet Inc.',
                  price: '\$2,657.00'),
              StockListTile(
                  ticker: 'MSFT',
                  companyName: 'Microsoft Corp.',
                  price: '\$299.00'),
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingChip extends StatelessWidget {
  final String label;

  TrendingChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.grey[800],
      label: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class DiscoverMoreSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: DiscoverMoreCard(
            image:
                'assets/images/transfer_account.jpg', // Replace with actual image path
            title: 'Transfer accounts in',
            subtitle: 'Consolidate assets',
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: DiscoverMoreCard(
            image:
                'assets/images/round_up_rewards.jpeg', // Replace with actual image path
            title: 'Round-up reward',
            subtitle: 'Invest as you spend',
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: DiscoverMoreCard(
            image:
                'assets/images/increase_savings.jpeg', // Replace with actual image path
            title: 'Increase savings',
            subtitle: 'Start small, grow big',
          ),
        ),
      ],
    );
  }
}

class DiscoverMoreCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  DiscoverMoreCard({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            height: 100, // Adjust the height as needed
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class StockListTile extends StatelessWidget {
  final String ticker;
  final String companyName;
  final String price;

  StockListTile({
    required this.ticker,
    required this.companyName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            ticker,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            companyName,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          trailing: Text(
            price,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Divider(color: Colors.grey[800]),
      ],
    );
  }
}
