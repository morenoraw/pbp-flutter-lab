class Watchlist {
    Watchlist({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    bool watched;
    String title;
    double rating;
    String releaseDate;
    String review;

    factory Watchlist.fromJson(Map<String, dynamic> json) => Watchlist(
        watched: json["fields"]["watched"] == "Yes" ? true : false,
        title: json["fields"]["title"],
        rating: json["fields"]["rating"],
        releaseDate: json["fields"]["release_date"],
        review: json["fields"]["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
    };
}
