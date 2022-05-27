 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FbUserController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  Future<bool> create (User user, String name   ) async{
 return _firestore.collection('Users').add({
    'id':user.uid, 
    'name' :name,
    'email':user.email,
   
 }).then((value) => true)
 .catchError((error)=> false);
  }



 
}