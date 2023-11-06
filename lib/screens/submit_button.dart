import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required String text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(174, 39, 242, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Center(
          child: Text(
            'Submit',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(241, 233, 243, 1),
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
