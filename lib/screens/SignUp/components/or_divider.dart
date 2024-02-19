import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: const Row(
        children: [
          buildDivider(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('OR',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20)),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}

class buildDivider extends StatelessWidget {
  const buildDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Divider(
      color: Colors.grey,
      height: 1.5,
    ));
  }
}
