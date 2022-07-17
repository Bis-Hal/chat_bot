import 'package:chat_bot/services/UserAuth.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {

  final _globalKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  UserAuth _userAuth = UserAuth();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    icon: Icon(Icons.supervised_user_circle_outlined),
                    hintText: 'Email',
                  ),
                ),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'Password'
                  ),
                ),
              ],
            ),
          ),
          
          ElevatedButton(
              onPressed: () async{
                 dynamic _valid =  await _userAuth.setUser(_email.text, _password.text);
              },
              child:Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
        ],
      ),


    );
  }
}
