import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Text(
              'Today\'s Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Salade tunisienne'),
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Kouskous'),
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Fruit de saison'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Rate today\'s menu',
            style: TextStyle(
              fontSize: 16.0,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
