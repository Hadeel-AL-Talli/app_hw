class User{
 late final String id; 
 late  final String name ; 
 late final String email ; 



User.fromMap(Map<String, dynamic> map){
id = map['id'];
name = map['name'];
email = map['email'];



}
Map<String , dynamic> toMap(){
  Map<String ,dynamic> map = <String , dynamic> {};
  map['name'] = name;
  map['email']= email;
  
  
  return map;
}
}