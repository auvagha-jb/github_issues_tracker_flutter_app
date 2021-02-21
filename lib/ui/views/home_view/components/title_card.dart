import 'package:flutter/material.dart';
import 'package:github_issue_tracker/core/enums/curvature.dart';
import 'package:github_issue_tracker/ui/shared/containers/raised_container.dart';
import 'package:github_issue_tracker/ui/themes/theme.dart';

class TitleCard extends StatelessWidget {
  final TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RaisedContainer(
      curvature: Curvature.CurvedTop,
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
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),

                      //Date
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Sunday, 21 February',
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
                  icon: Text('Date', style: TextStyle(color: AppTheme.filterRowColor)),
                  label: Icon(Icons.keyboard_arrow_down, color: AppTheme.filterRowColor,),
                ),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Text('Filter by', style: TextStyle(color: AppTheme.filterRowColor)),
                  label: Icon(Icons.keyboard_arrow_down, color: AppTheme.filterRowColor,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}