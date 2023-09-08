import 'package:flutter/material.dart';

import '../view_models/post_view_model.dart';
import '../view_models/posts_view_model.dart';

class viewPosts extends StatelessWidget {
  post_view_model? data;
  viewPosts({Key? key,this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data?.title)),
      body: SingleChildScrollView(child: Column(children: [
        Center(child: Text("${data?.title}",style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold),)),
        Text("ID: ${data?.id}  UserID: ${data?.userid} "),
        Text("${data?.body}"),
      ],),),
    );
  }
}
