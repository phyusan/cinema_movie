import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/model/movie_list_model.dart';
import 'package:cinema_movie/homepage/screen/Home_page/moviedetail.dart';
import 'package:cinema_movie/homepage/screen/Home_page/widget/feature_movie.dart';
import 'package:cinema_movie/homepage/screen/Home_page/widget/top_series_movie.dart';
import 'package:cinema_movie/widget/appbarmovie.dart';
import 'package:cinema_movie/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cinema_movie/homepage/data/provider.dart';

class Homepage extends ConsumerStatefulWidget {
  const Homepage({super.key});

  @override
  ConsumerState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(mov);

    return Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: appbarmovie(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextRowWidget(
                  Text1: 'RECOMMENDED',
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
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MovieDetail(
                                          uniqueid: result[index].uniqueID)),
                                );
                              },
                              child: SizedBox(
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
                                            //  AssetImage(
                                            //     'assets/svg/japan food1.png'),
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
                              ),
                            );
                          })),
                    );
                  },
                  error: (Object error, StackTrace stackTrace) {
                    return Text(error.toString(),
                        style: const TextStyle(color: Colors.white));
                  },
                  loading: () {
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
              const SizedBox(height: 10),
              const TopSeriesWidget(),
              const SizedBox(height: 10),
              const FeatureMovieWidget()
            ],
          ),
        ));
  }
}
