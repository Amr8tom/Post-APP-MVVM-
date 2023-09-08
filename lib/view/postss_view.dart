import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:postsocial1/repository/posts/API.dart';
import '../models/model.dart';
import '../view_models/posts_view_model.dart';

class PostsView extends StatefulWidget {
  @override
  State<PostsView> createState() => PostsViewState();
}

class PostsViewState extends State<PostsView> {
   List postsList=[];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future _fetchData() async {
    postsList = await postsviewmodel().fetchAllposts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Social posts"))),
      body:postsList.isEmpty?Center(child: CircularProgressIndicator(),):ListView.builder(
        itemCount: postsList.length,
        itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  "${postsList[index].title}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text("Post number: ${postsList[index].id}"),
                    Text("User ID: ${postsList[index].userId}"),
                    SizedBox(height: 8),
                    Text("${postsList[index].body}"),
                  ],
                ),
              ),
            );

        },
      ),
    );
  }}