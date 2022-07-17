import 'package:firebase_auth/firebase_auth.dart';
class UserAuth{

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future setUser(String email, String password) async{
    try{
      //UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      //User? user = result.user;
     // print(user);
     // return user;

      _auth.signInAnonymously();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  Future signOut() async{
    return _auth.signOut();
  }
}