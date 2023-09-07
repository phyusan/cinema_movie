//topSeries Movie Widget
import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/model/movie_list_model.dart';

import 'package:cinema_movie/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cinema_movie/homepage/data/provider.dart';

class TopSeriesWidget extends ConsumerStatefulWidget {
  const TopSeriesWidget({
    super.key,
  });

  @override
  ConsumerState<TopSeriesWidget> createState() => _TopSeriesWidgetState();
}

class _TopSeriesWidgetState extends ConsumerState<TopSeriesWidget> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(mov);
    return Container(
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kboxColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextRowWidget(
              Text1: 'Top Series',
            ),
            const SizedBox(height: 10),
            data.when(data: (data) {
              List<MovieList> result = data.map((e) => e).toList();
              return SizedBox(
                width: 400,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 150,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image: NetworkImage(
                                        result[index].imageUrls![0]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SvgPicture.asset(ratingphoto),
                            const SizedBox(height: 5),
                            Text(result[index].title!,
                                softWrap: true,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: kTextColorOne,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Product Sans',
                                )),
                            Text(result[index].type!,
                                softWrap: true,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kTextColorOne,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Product Sans',
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }, error: (Object error, StackTrace stackTrace) {
              return Text(error.toString(),
                  style: const TextStyle(color: Colors.white));
            }, loading: () {
              return const Center(child: CircularProgressIndicator());
            }),
          ],
        ),
      ),
    );
  }
}
