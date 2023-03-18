import 'package:hello_world/Task%208.dart';

class User with EmailSystem {
  String id;
  String email;

  User.Construct(this.id, this.email);
}

class AdminUser extends User with EmailSystem{

  AdminUser(id, email) : super.Construct(id, email);
}

class GeneralUser extends User {
  GeneralUser(id, email) : super.Construct(id, email);
}

class UserManager<T extends User> {
  T Idlist;
  static Map Userlist = Map();

  UserManager(this.Idlist);

  void AddUser (Idlist){
    if (Idlist.runtimeType == AdminUser) {
      var x = Idlist.email.split('@');
      var y = x[1];
      Userlist.addAll({ y : Idlist.id});
    }
    else {
      Userlist.addAll({Idlist.email : Idlist.id});
    }
  }

  void DeletUser (Idlist) {
    if (Idlist.runtimeType == AdminUser) {
      var x = Idlist.email.split('@');
      var y = x[1];
      Userlist.remove(y);
    }
    else {
      Userlist.remove(Idlist.email);
    };
  }

  void ShowAllUsers () {
    print(Userlist);
  }
}

mixin EmailSystem {
  void getMailSystem (email) {
    dynamic after = email.split('@');
    print(after[1]);
    return after[1];
  }
}

void main () {
  AdminUser Alex = AdminUser('Alex', 'Alex@mail.com');
  GeneralUser Bob = GeneralUser("Bob", "bob_lox@pidor.ru");

  UserManager addition = UserManager<User>(Alex);
  addition.AddUser(Alex);
  addition.ShowAllUsers();

  addition = UserManager<User>(Bob);
  addition.AddUser(Bob);
  addition.ShowAllUsers();

  addition.DeletUser(Alex);
  addition.ShowAllUsers();
}