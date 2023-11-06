import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.0,
      height: 40.0,
      child: FloatingActionButton.small(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(206, 156, 245, 1),
        child: Transform.rotate(
          angle: 3.141,
          child: Icon(
            size: 27.0,
            Icons.logout,
            color: const Color.fromARGB(255, 19, 18, 18),
          ),
        ),
        shape: CircleBorder(),
      ),
    );
  }
}
