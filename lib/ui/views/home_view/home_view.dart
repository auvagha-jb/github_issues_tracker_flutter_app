import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/ui/views/home_view/components/issue_cards_list_view.dart';
import 'package:github_issue_tracker/ui/views/home_view/components/title_card.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Container with the title card
          Container(
            color: Theme.of(context).backgroundColor,
            padding: EdgeInsets.only(top: 25.0),
            child: TitleCard(),
          ),

          //Issue Cards List View
          Expanded(child: IssueCardsListView()),
        ],
      ),
    );
  }
}
