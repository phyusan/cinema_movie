import 'package:flutter/material.dart';

class MovingCardWidget extends StatelessWidget {
  const MovingCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
            ),
            width: 115,
            height: 140,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                  image: NetworkImage(
                      "https://kktstroage.azureedge.net/yammo/movie/940_MOVIE_PHOTO_e87707db-1bd1-45f2-953d-b1a4ea298cf5.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
              width: 225,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Transformers: Rise of the Beasts',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0F172A))),
                    SizedBox(height: 5),
                    Text('Action Movie . 2023',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0F172A))),
                    SizedBox(height: 5),
                    Text('2 hr 7 min',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0F172A))),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
