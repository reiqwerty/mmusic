class ModelMusic {
  final int? id;
  final String title;
  final String name;
  final String imagePath;
  final bool isCompleted;

  ModelMusic({
    this.id,
    required this.title,
    required this.name,
    required this.imagePath,
    this.isCompleted = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'name': name,
      'imagePath': imagePath,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  factory ModelMusic.fromMap(Map<String, dynamic> map) {
    return ModelMusic(
      id: map['id'] as int?,
      title: map['title'] as String,
      name: map['name'] as String,
      imagePath: map['imagePath'] as String,
      isCompleted: map['isCompleted'] == 1,
    );
  }
}