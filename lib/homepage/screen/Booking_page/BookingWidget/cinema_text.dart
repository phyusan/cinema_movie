import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextCinemaRowWidget extends StatelessWidget {
  const TextCinemaRowWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon, color: Colors.black),
          const SizedBox(width: 10),
          Text(text,
              softWrap: true,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0F172A))),
        ],
      ),
    );
  }
}
