import 'package:postsocial1/models/model.dart';

class post_view_model{

  PostModel? postmodel;
  post_view_model({this.postmodel});

  get id => postmodel?.id;
  get title => postmodel?.title;
  get body =>postmodel?.body;
  get userid => postmodel?.userId;


}