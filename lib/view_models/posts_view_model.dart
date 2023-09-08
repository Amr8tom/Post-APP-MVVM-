import '../models/model.dart';
import '../repository/posts/API.dart';

class postsviewmodel{

  fetchAllposts() async{
    print("LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL");
    print(PostsAPI().GetAllRepositories().runtimeType);
    return PostsAPI().GetAllRepositories();
  }
}