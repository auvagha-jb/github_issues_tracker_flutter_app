import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_issue_tracker/ui/shared/containers/raised_container.dart';
import 'package:github_issue_tracker/ui/themes/theme.dart';

class IssueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedContainer(
      child: Column(
        children: [
          //Row with Open date and Open status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Opened 29 Oct 2019'),
              FlatButton(
                color: Theme.of(context).buttonColor,
                child: Text('Open', style: TextStyle(color: Colors.white)),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),

          //Card body containing the description of the issue and the tag id
          RichText(
            text: TextSpan(
              text: 'Compilation error building on iOS simulator: fatal error could not build module '
                  '\'Foundation\' ',
              style: TextStyle(fontSize: 17, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: '#43713',
                  style: TextStyle(color: AppTheme.tagColor),
                ),
              ],
            ),
          ),

          //Row containing the author and the number of comments
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person_outline, color: AppTheme.iconColor),
                label: Text('developerslearnit', style: TextStyle(color: AppTheme.iconColor)),
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.comment_outlined, color: AppTheme.iconColor),
                label: Text('55 comments', style: TextStyle(color: AppTheme.iconColor)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
