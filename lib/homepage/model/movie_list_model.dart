class MovieList {
  int? iD;
  String? title;

  String? runTime;
  String? director;
  String? cast;

  String? type;
  String? coverImageUrl;
  String? trailer;
  List<String>? imageUrls;
  String? accesstime;
  String? releaseDate;
  String? uniqueID;

  MovieList(
      {this.iD,
      this.title,
      this.runTime,
      this.director,
      this.cast,
      this.type,
      this.coverImageUrl,
      this.trailer,
      this.imageUrls,
      this.accesstime,
      this.releaseDate,
      this.uniqueID});

  MovieList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    title = json['Title'];

    runTime = json['RunTime'];
    director = json['Director'];
    cast = json['Cast'];

    type = json['Type'];
    coverImageUrl = json['CoverImageUrl'];
    trailer = json['Trailer'];
    imageUrls = json['ImageUrls'].cast<String>();
    accesstime = json['Accesstime'];
    releaseDate = json['ReleaseDate'];
    uniqueID = json['UniqueID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Title'] = title;

    data['RunTime'] = runTime;
    data['Director'] = director;
    data['Cast'] = cast;

    data['Type'] = type;
    data['CoverImageUrl'] = coverImageUrl;
    data['Trailer'] = trailer;
    data['ImageUrls'] = imageUrls;
    data['Accesstime'] = accesstime;
    data['ReleaseDate'] = releaseDate;
    data['UniqueID'] = uniqueID;
    return data;
  }
}
