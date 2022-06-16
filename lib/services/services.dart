import 'package:dio/dio.dart';

class GetProjects {
  static Dio dio = Dio();

  static Future fetchProjects() async {
    try {
      var response =
          await dio.get('https://api-port1.herokuapp.com/api/projects.json');

      return response;
    } on DioError catch (error) {
      return error.response;
    }
  }

  //   final response = await http
  //       .get(Uri.parse('https://api-port1.herokuapp.com/api/projects.json'));
  // }

  static Future fetchSkills() async {
    // final response = await http
    //     .get(Uri.parse('https://api-port1.herokuapp.com/api/skills.json'));

    try {
      var response =
          await dio.get('https://api-port1.herokuapp.com/api/skills.json');

      return response;
    } on DioError catch (error) {
      return error.response;
    }
  }

  static Future fetchOtherSkills() async {
    // final response = await http
    //     .get(Uri.parse('https://api-port1.herokuapp.com/api/otherskills.json'));

    try {
      var response =
          await dio.get('https://api-port1.herokuapp.com/api/otherskills.json');

      return response;
    } on DioError catch (error) {
      return error.response;
    }
  }

// // A function that converts a response body into a List<Projects>.
//   List<Project> parseProject(String responseBody) {
//     final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

//     return parsed.map<Project>((json) => Project.fromJson(json)).toList();
//   }

//   List<Skill> parseSkill(String responseBody) {
//     final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

//     return parsed.map<Skill>((json) => Skill.fromJson(json)).toList();
//   }

//   List<OtherSkill> parseOtherSkill(String responseBody) {
//     final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

//     return parsed.map<OtherSkill>((json) => OtherSkill.fromJson(json)).toList();
//   }
}

class SendMessage {
  Dio dio = Dio();

  Future<dynamic> sendMessage(String name, String email, String message) async {
    String _baseUrl = "https://api-port1.herokuapp.com/api/contact/";
    var options = Options(
      contentType: "application/json",
      followRedirects: false,
    );

    final response = await dio.post(
      _baseUrl,
      data: {
        "name": name,
        "email": email,
        "message": message,
      },
      options: options,
    );

    return response.statusCode;
  }
}
