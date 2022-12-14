import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:ultimate_flutter_app/data/http/random_face_api_service.dart';

abstract class HomeRepo {
  Future<Either<Exception, http.Response>> getARandomFace();
}

class HomeRepoImpl implements HomeRepo {
  final RandomFaceApiService _randomFaceApiService;
  HomeRepoImpl(this._randomFaceApiService);

  @override
  Future<Either<Exception, http.Response>> getARandomFace() async {
    await _randomFaceApiService.fetchRandomFace();
  }
}
