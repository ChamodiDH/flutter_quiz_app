import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_game_app/screens/progress_bar.dart';

class QuizStatus extends StatelessWidget {
  const QuizStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15.0,
        top: 10.0,
        right: 15.0,
        bottom: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(size: 40, Icons.timer_sharp),
              SizedBox(
                  width:
                      10), // Add some space between the icon and the progress indicator
              Expanded(
                child: Container(
                  child: ProgressStatusBar(
                    max: 1.0,
                    current: 0.5,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Remaining time 10 seconds',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
