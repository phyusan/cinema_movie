import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/model/movie_list_model.dart';

import 'package:cinema_movie/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/provider.dart';

class FeatureMovieWidget extends ConsumerStatefulWidget {
  const FeatureMovieWidget({
    super.key,
  });

  @override
  ConsumerState<FeatureMovieWidget> createState() => _FeatureMovieWidgetState();
}

class _FeatureMovieWidgetState extends ConsumerState<FeatureMovieWidget> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(mov);
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: TextRowWidget(
            Text1: 'Featured',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: data.when(
            data: (data) {
              List<MovieList> result = data.map((e) => e).toList();
              print(result.length);

              return SizedBox(
                height: 450,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.65,
                            // crossAxisSpacing: 10,
                            // mainAxisSpacing: 10,
                            crossAxisCount: 2),
                    itemCount: result.length,
                    itemBuilder: ((context, index) {
                      return SizedBox(
                        height: 500,
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
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: kTextColorTwo,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Product Sans',
                                )),
                          ],
                        ),
                      );
                    })),
              );
            },

            //error show
            error: (Object error, StackTrace stackTrace) {
              return Text(error.toString(),
                  style: const TextStyle(color: Colors.white));
            },
            //loading state
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}
