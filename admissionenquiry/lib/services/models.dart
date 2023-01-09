// @JsonSerializable()
class Topic {
  late final String id;
  final String title;
  final String description;
  final String icon;
  // final List<Quiz> quizzes;

  Topic({
    this.id = '',
    this.title = '',
    this.description = '',
    this.icon = 'add',
  });

  // factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
  // Map<String, dynamic> toJson() => _$TopicToJson(this);
}
