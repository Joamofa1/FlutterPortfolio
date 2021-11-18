
class Project {
  final String title;
  final String projectUrl;
  final String imageUrl;
  final String description;
  final bool onGithub;
  final String githubUrl;

  Project(
      {required this.title,
      required this.projectUrl,
      required this.imageUrl,
      required this.description,
      required this.onGithub,
      required this.githubUrl});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      title: json['title'] as String,
      projectUrl: json['url'] as String,
      imageUrl: json['image_url'] as String,
      description: json['description'] as String,
      onGithub: json['github'] as bool,
      githubUrl: json['github_url'] as String
    );
  }
}
