class HomeSchema {
  HomeSchema({
    required this.count,
  });

  final int count;

  HomeSchema copyWith({
    int? count,
  }) {
    return HomeSchema(
      count: count ?? this.count,
    );
  }
}

