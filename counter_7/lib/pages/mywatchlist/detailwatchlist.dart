import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:counter_7/models/modelwatchlist.dart';

class MyWatchlistDetailPage extends StatelessWidget {
  final Watchlist movieDetail;
  const MyWatchlistDetailPage({Key? key, required this.movieDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      drawer: const DrawerComponents(currentPage: "My Watchlist"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Text(
                    movieDetail.title
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Release Date: "
                      ),
                      Text(
                        movieDetail.releaseDate
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Rating: "
                      ),
                      Text(
                        movieDetail.rating.toString()
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Status: "
                      ),
                      Text(
                        movieDetail.watched ? "Watched" : "Not Watch yet"
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Review: "),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          movieDetail.review
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 35,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Back",
                            style: TextStyle(color: Colors.white,fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}