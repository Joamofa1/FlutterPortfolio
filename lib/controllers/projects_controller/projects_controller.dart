import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:portfolio/models/http_response.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/services/services.dart';

class ProjectsController extends GetxController {
  // RxList<Project> projects = <Project>[].obs;

  var response = HttpResponse(
    success: false,
    statusCode: 400,
    message: 'Something went wrong',
    data: <Project>[],
  ).obs;

  RxBool isLoaing = false.obs;

  Future getProjects() async {
    try {
      isLoaing(true);
      var res = await GetProjects.fetchProjects();

      if (res.statusCode == 200) {
        var json = res.data as List;

        var projects = json.map((e) => Project.fromJson(e)).toList();

        response.value = HttpResponse(
          success: true,
          statusCode: res.statusCode,
          message: 'Success',
          data: projects,
        );

        isLoaing(false);
      }
    } on DioError catch (error) {
      isLoaing(false);
      print(error);
      // return response;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getProjects();
    super.onInit();
  }
}
