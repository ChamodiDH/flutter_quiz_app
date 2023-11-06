import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final int number;

  const NumberButton({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(212, 212, 212, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            )),
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 5, 5, 5),
                fontSize: 35),
          ),
        ),
      ),
    );
  }
}
