class UserData {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  static UserData getCurrentUser() {
    return UserData(
      id: "USER_123",
      name: "BlaxBerry",
      email: "blaxberry@example.com",
      avatarUrl: "https://randomuser.me/api/portraits/med/men/1.jpg",
    );
  }
}
