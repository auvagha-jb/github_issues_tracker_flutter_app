
class GraphQLService {
  getDetails({username = "IvanGoncharov"}) {
    String query = '''
    {
      user(login: "$username") {
        followers(last: 10) {
          totalCount
        }
        issues(first: 10, states: OPEN) {
          totalCount
          nodes {
            author {
              url
            }
            body
            closed
            createdAt
            comments {
              totalCount
            }
            number
          }
        }
      }
    }
    ''';
    return query;
  }
}