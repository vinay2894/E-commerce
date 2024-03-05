class UserModal {
  String id;
  String name;
  String email;
  String password;
  String address;

  UserModal({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.address,
  });

  factory UserModal.fromMap({required Map data}) {
    return UserModal(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      password: data['password'],
      address: data['address'],
    );
  }

  Map<String, dynamic> get toMap {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'address': address,
    };
  }
}
