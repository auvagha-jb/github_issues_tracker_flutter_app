import 'package:flutter/material.dart';
import 'package:github_issue_tracker/ui/views/home_view/components/issue_card.dart';

class IssueCardsListView extends StatelessWidget {
  //Dummy Items
  final items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return IssueCard();
      },
    );
  }
}
