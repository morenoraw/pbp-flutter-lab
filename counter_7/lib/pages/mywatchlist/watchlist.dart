import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:counter_7/pages/mywatchlist/detailwatchlist.dart';
import 'package:counter_7/utils/fetchmywatchlist.dart';
import 'package:counter_7/models/modelwatchlist.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  final String title = "My Watch List";

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const DrawerComponents(currentPage: "My Watchlist"),
      body: FutureBuilder(
        future: fetchWatchlist(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Watchlist>> snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Watch list is empty.",
                    style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => MyWatchlistDetailPage(
                                          movieDetail: snapshot.data![index],
                                        ))));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: snapshot.data![index].watched
                                      ? Colors.green
                                      : Colors.red),
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 2.0)
                              ]),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left:15),
                                      child: Text(
                                        snapshot.data![index].title,
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
            }
          }
        },
      ),
    );
  }
}
