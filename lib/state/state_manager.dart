import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/services/services.dart';

final projectStateFuture = FutureProvider<List<Project>>((ref) async {
  return GetProjects().fetchProjects();
});
