import 'package:flutter/material.dart';

class WalletWidget extends StatefulWidget {
  const WalletWidget({Key? key}) : super(key: key);

  @override
  _WalletWidgetState createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget> {
  int amount = 7; // Example amount, replace it with your data

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
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
                  Text(
                    '\$$amount',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Icon(
                    Icons.attach_money,
                    size: 18.0,
                  ),
                ],
              ),
              Text(
                'In Your Wallet',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          AddButtonWidget(
            onAddPressed: () {
              setState(() {
                amount += 100; // Increment the amount by 100 (for example)
              });
            },
          ), // Stateful 'Add' button widget
        ],
      ),
    );
  }
}

class AddButtonWidget extends StatefulWidget {
  final VoidCallback? onAddPressed;

  const AddButtonWidget({Key? key, this.onAddPressed}) : super(key: key);

  @override
  _AddButtonWidgetState createState() => _AddButtonWidgetState();
}

class _AddButtonWidgetState extends State<AddButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        widget.onAddPressed
            ?.call(); // Call the function passed from parent widget
      },
      icon: Icon(
        Icons.add,
        color: Colors.green, // Change icon color
      ),
    );
  }
}
