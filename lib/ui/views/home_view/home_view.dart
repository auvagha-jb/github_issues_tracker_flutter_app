import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/ui/shared/containers/curved_sheet_container.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/home';
  final TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.only(top: 25.0),
        child: Column(
          children: [
            //Curved Header Container
            //Contains: Date, Search container,
            CurvedSheetContainer(
              child: Column(
                children: [
                  //Row containing day, date and settings icon
                  Container(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Column containing the Day and Date
                        Expanded(
                          child: Column(
                            children: [
                              //Day
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Today',
                                  style: TextStyle(fontSize: 26),
                                ),
                              ),

                              //Date
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'Tuesday, 21 November',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),

                        IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {})
                      ],
                    ),
                  ),

                  //Search bar
                  Container(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: TextField(
                      controller: _searchController,
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {
                        print(value);
                      },
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

                  //Filter Row
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        FlatButton.icon(
                          onPressed: () {},
                          icon: Text('Date'),
                          label: Icon(Icons.keyboard_arrow_down),
                        ),
                        FlatButton.icon(
                          onPressed: () {},
                          icon: Text('Filter By'),
                          label: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
