class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity ({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  /// Map is needed to send to JSON document. Cannot send directly

  Map<String, Object?> toDocument() {
    return {
      'userId': userId, 
      'email': email,
      'name': name, 
      'hasActiveCart': hasActiveCart
    };

    
  }
  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
      userId: doc['userId'], //accessing userId parameter in the doc 
      email: doc['email'], 
      name: doc['name'], 
      hasActiveCart: doc['hasActiveCart']
      );
    }

}