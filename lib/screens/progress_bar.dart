import 'package:flutter/material.dart';

class ProgressStatusBar extends StatelessWidget {
  final double max;
  final double current;
  final Color color;

  const ProgressStatusBar(
      {Key? key,
      required this.max,
      required this.current,
      this.color = const Color.fromARGB(255, 39, 191, 242)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (current / max) * x;
        return Stack(
          children: [
            Container(
              width: x,
              height: 20,
              decoration: BoxDecoration(
                color: Color(0xffd3d3d3),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: percent,
              height: 20,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}
