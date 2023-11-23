import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 172, 194, 214),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ListTile(
            contentPadding: EdgeInsets.all(10),
            iconColor: Colors.white,
            leading: Icon(Icons.restaurant_menu),
            title: Text(
              'Today\'s Menu',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0, // Increased font size to 24.0
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 221, 235, 241),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              leading: Icon(Icons.flatware_outlined),
              title: Text(
                'Salade tunisienne',
                style: TextStyle(
                  color: Colors.black, // Change text color to black
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 221, 235, 241),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              leading: Icon(
                Icons.flatware_outlined,
              ),
              title: Text(
                'Salade tunisienne',
                style: TextStyle(
                  color: Colors.black, // Change text color to black
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 221, 235, 241),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              leading: Icon(
                Icons.flatware_outlined,
              ),
              title: Text(
                'Salade tunisienne',
                style: TextStyle(
                  color: Colors.black, // Change text color to black
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.thumb_up,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Rate today\'s menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
