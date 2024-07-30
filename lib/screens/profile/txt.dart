import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final String youtube;
  final TextEditingController speed;
  final sid;
  const CustomContainer({
    required this.youtube,
    required this.sid, required this.speed
});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextField(
            controller: speed,
            // inputFormatters: [LengthLimitingTextInputFormatter(10)],
            decoration: InputDecoration(
              prefixIcon: Icon(sid),
              border: OutlineInputBorder(),
              hintText: youtube,
            )),
      );
  }
}
