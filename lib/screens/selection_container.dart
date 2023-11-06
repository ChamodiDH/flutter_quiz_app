import 'package:flutter/material.dart';
import 'package:quiz_game_app/screens/number_button.dart';
import 'package:quiz_game_app/screens/submit_button.dart';

class SelectionKeyContainer extends StatelessWidget {
  const SelectionKeyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, top: 12),
      padding: const EdgeInsets.only(top: 10, bottom: 25),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(101, 41, 149, 1), //101, 41, 149
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // implement the number keys (from 0 to 9) with the NumberButton widget
            // the NumberButton widget is defined in the bottom of this file
            children: [
              NumberButton(
                number: 1,
              ),
              NumberButton(
                number: 2,
              ),
              NumberButton(
                number: 3,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
              ),
              NumberButton(
                number: 5,
              ),
              NumberButton(
                number: 6,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
              ),
              NumberButton(
                number: 8,
              ),
              NumberButton(
                number: 9,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this button is used to delete the last number

              NumberButton(
                number: 0,
              ),
              SubmitButton(
                text: "Submit",
              ),
              // this button is used to submit the entered value
            ],
          ),
        ],
      ),
    );
  }
}
