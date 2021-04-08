
enum UserType { PARTICULAR, ADMIN }

class Users {

  Users({this.id,
      this.name,
      this.surname,
      this.email,
      this.password,
      this.phone,
      this.type = UserType.PARTICULAR,
      this.createdAt});

  String id;
  String name;
  String surname;
  String email;
  String password;
  String phone;
  UserType type;
  DateTime createdAt;

  @override
  String toString() {
    return 'Users{id: $id, name: $name, surname: $surname, email: $email, password: $password, phone: $phone, type: $type, createdAt: $createdAt}';
  }
}