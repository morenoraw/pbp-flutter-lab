import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/tambahbudget.dart';
import 'package:counter_7/pages/databudget.dart';
import 'package:counter_7/pages/counter7.dart';
import 'package:counter_7/pages/mywatchlist/watchlist.dart';
import 'package:provider/provider.dart';

class DrawerComponents extends StatelessWidget {
  const DrawerComponents({super.key, required this.currentPage});

  final String currentPage;

  @override
  Widget build(BuildContext context) {
    var currentScreen = Provider.of<ScreenState>(context).getCurrentScreen;

    return Drawer(
        child: ListView(
      children: <Widget>[
        ListTile(
          title: Text(
            "counter_7",
            style: currentScreen == 0
                ? const TextStyle(fontWeight: FontWeight.bold)
                : const TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.of(context).pop();
            if (currentPage != "counter_7") {
              Provider.of<ScreenState>(context, listen: false)
                  .setCurrentScreen(0);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Counter7()));
            }
          },
        ),
        ListTile(
          title: Text(
            "Tambah Budget",
            style: currentScreen == 1
                ? const TextStyle(fontWeight: FontWeight.bold)
                : const TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.of(context).pop();
            if (currentPage != "Tambah Budget") {
              Provider.of<ScreenState>(context, listen: false)
                  .setCurrentScreen(1);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TambahBudgetPage()));
            }
          },
        ),
        ListTile(
          title: Text(
            "Data Budget",
            style: currentScreen == 2
                ? const TextStyle(fontWeight: FontWeight.bold)
                : const TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.of(context).pop();
            if (currentPage != "Data Budget") {
              Provider.of<ScreenState>(context, listen: false)
                  .setCurrentScreen(2);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DataBudgetPage()));
            }
          },
        ),
        ListTile(
          title: Text(
            "My Watchlist",
            style: currentScreen == 3
                ? const TextStyle(fontWeight: FontWeight.bold)
                : const TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.of(context).pop();
            if (currentPage != "My Watchlist") {
              Provider.of<ScreenState>(context, listen: false)
                  .setCurrentScreen(3);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyWatchlistPage()));
            }
          },
        )
      ],
    ));
  }
}