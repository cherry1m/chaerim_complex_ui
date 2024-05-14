import 'package:flutter/material.dart';
import 'package:hello_world/src/pages/friends_list_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: IndexedStack(
          index: pageIndex,
          children: [
            const FriendsListPage(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home_filled,
                  color: Colors.blue[400],
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                const Opacity(
                  opacity: 0.0,
                  child: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                ),
                const Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                ),
                const Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ));
  }
}