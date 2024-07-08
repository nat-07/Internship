import '../entities/entities.dart';

/// Domain Model (MyUser):

///Represents the core business logic and rules.
///Contains only the properties and methods directly related to the application's domain.
///Independent of data storage and other external frameworks.
///Data Model (MyUserEntity):

///Represents how data is stored in the database.
///Contains methods and properties related to database operations, such as serialization and deserialization.
///Often includes data-specific annotations or configurations.

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
    userId: '',
    email:'',
    name: '',
    hasActiveCart: false,
    );

    MyUserEntity toEntity(){
      return MyUserEntity(
        userId: userId,
        email: email, 
        name: name, 
        hasActiveCart: hasActiveCart, 
      );

    }

    static MyUser fromEntity(MyUserEntity entity){
      return MyUser(
        userId: entity.userId, 
        email: entity.email,
        name: entity.name, 
        hasActiveCart: entity.hasActiveCart
      );
    }
  @override
  String toString(){
    return 'MyUser: $userId, $name, $hasActiveCart';
  }
}
