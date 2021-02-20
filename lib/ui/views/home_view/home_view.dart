import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/home';
  final TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: Column(
          children: [
            //Header
            //Day
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Today',
                    style: TextStyle(fontSize: 24),
                  ),
                ),

                //Date
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  alignment: Alignment.topLeft,
                  child: Text('Tuesday, 21 November'),
                ),

                //Search bar
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextFormField(
                    controller: _searchController,
                    cursorColor: Theme.of(context).accentColor,
                    autofocus: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Theme.of(context).accentColor),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear_rounded, color: Theme.of(context).accentColor),
                        onPressed: () => _searchController.clear(),
                      ),
                      filled: true,
                      fillColor: Theme.of(context).primaryColor,
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(22.0),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(22.0),
                        ),
                        borderSide: const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 11),
                      hintText: "Search issue",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
