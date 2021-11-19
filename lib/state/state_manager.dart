import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/models/otherSkill.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/models/skill.dart';
import 'package:portfolio/services/services.dart';

final projectStateFuture = FutureProvider<List<Project>>((ref) async {
  return GetProjects().fetchProjects();
});


final SkillStateFuture = FutureProvider<List<Skill>>((ref) async {
  return GetProjects().fetchSkills();
});


final otherSkillsStateFuture = FutureProvider<List<OtherSkill>>((ref) async {
  return GetProjects().fetchOtherSkills();
});
