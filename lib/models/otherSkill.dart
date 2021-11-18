
class OtherSkill {
  final String name;
  final int level;

  OtherSkill({required this.name, required this.level});

  factory OtherSkill.fromJson(Map<String, dynamic> json) {
    return OtherSkill(
      name: json['name'] as String,
      level: json['level'] as int,
    );
  }
}

