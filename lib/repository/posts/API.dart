import 'package:postsocial1/models/model.dart';
import 'package:postsocial1/repository/posts/postrepository.dart';
import 'package:dio/dio.dart';
class PostsAPI extends postRepository{
  @override
  Future<List<PostModel>> GetAllRepositories() async{
    List<PostModel> posts =[];
    try {
      var response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
      print(response.data);

      for(Map<String,dynamic> post in response.data){
        PostModel p =PostModel.fromJson(post);
        posts.add(p);
      }
    }catch (Execption){
      print(Execption);
    }
    print(posts);
    print(posts.runtimeType);
    print("lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll");
    return posts;
  }

  @override
  Future<PostModel> GetPostById(int id) async{
    PostModel mypost= PostModel();
    List<PostModel> posts=[];
    try{
      var response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
      var list = response.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();
    }catch (Execption){
      print(Execption);
    }
    for (PostModel post in posts) {
      if (post.id == id) {
        mypost= post;
      }
    }
    return mypost;
  }
  
  
}