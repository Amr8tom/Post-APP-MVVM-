import 'package:postsocial1/models/model.dart';

abstract class postRepository{

  Future<List<PostModel>> GetAllRepositories();
  Future<PostModel> GetPostById(int id);


}