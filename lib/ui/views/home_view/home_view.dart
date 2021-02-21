import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/ui/views/home_view/components/issue_card.dart';
import 'package:github_issue_tracker/ui/views/home_view/components/title_card.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/home';

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
            TitleCard(),

            //Container holds the ListView
            Container(
              child: IssueCard(),
            ),
          ],
        ),
      ),
    );
  }
}
