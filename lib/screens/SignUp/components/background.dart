import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/signup_top.png',
                width: size.width * 0.45),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/main_bottom.png',
                width: size.width * 0.25),
          ),
          child,
        ],
      ),
    );
  }
}
