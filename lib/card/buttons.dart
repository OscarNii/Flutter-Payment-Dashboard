import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                // ignore: prefer_const_constructors
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                  spreadRadius: 2,
                )
              ]),
          child: Center(
            child: Image.asset('assets/pay.png'),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Send',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
