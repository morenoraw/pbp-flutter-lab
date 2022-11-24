import 'package:counter_7/models/modelwatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Watchlist>> fetchWatchlist() async {
  var url = Uri.parse('https://tugas-morenoraw.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));
  // melakukan konversi data json menjadi object MyWatchlist
  List<Watchlist> listMyWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchlist.add(Watchlist.fromJson(d));
    }
  }
  return listMyWatchlist;
}