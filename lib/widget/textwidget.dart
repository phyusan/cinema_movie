import 'package:flutter/material.dart';

import '../../const.dart';

class TextRowWidget extends StatelessWidget {
  const TextRowWidget({
    super.key,
    required this.Text1,
  });
  final String Text1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Text1,
            style: const TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
              color: kTextColorOne,
              fontWeight: FontWeight.w700,
            )),
        const Text('See all >',
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 18,
              color: kTextColorTwo,
              fontWeight: FontWeight.w400,
            )),
      ],
    );
  }
}

class TextColumnWidget extends StatelessWidget {
  const TextColumnWidget({
    super.key,
    required this.LargeText,
    required this.SmallText,
  });
  final String LargeText;
  final String SmallText;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LargeText,
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w700)),
            const SizedBox(height: 14),
            Text(SmallText,
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    color: Color(0xffF9FAFB),
                    fontWeight: FontWeight.w400)),
          ],
        ));
  }
}
