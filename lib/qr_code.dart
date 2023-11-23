import 'package:flutter/material.dart';

class QRWidget extends StatelessWidget {
  const QRWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 172, 194, 214),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Center(
                child: Text(
                  'Scan your QR Code',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Icon(
              Icons.qr_code,
              size: 96,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
