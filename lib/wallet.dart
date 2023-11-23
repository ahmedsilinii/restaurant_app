import 'package:flutter/material.dart';

class WalletWidget extends StatefulWidget {
  const WalletWidget({Key? key}) : super(key: key);

  @override
  _WalletWidgetState createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget> {
  int amount = 7;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 172, 194, 214),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      '$amount',
                      style: const TextStyle(
                        fontSize: 36.0, // Increase font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.attach_money, // Use attach_money icon for currency
                    size: 36.0, // Set the size of the currency icon
                    color: Colors.white, // Set icon color to white
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    'In Your Wallet',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 5, 5, 20),
            child: IconButton(
              onPressed: () {
                setState(() {
                  amount += 1; // Increment the amount by 1 (for example)
                });
              },
              icon: const Icon(
                Icons.add_rounded,
                color: const Color.fromARGB(
                    255, 255, 255, 255), // Change icon color
                size: 20, // Set the size of the 'Add' icon
              ),
            ),
          ),
        ],
      ),
    );
  }
}
