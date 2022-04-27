import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
<<<<<<< HEAD
import 'package:mobile_b/tools/common_submit_button.dart';
=======
import 'package:praktikum_mobile_2022_plug_e/tools/common_submit_button.dart';
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefPage extends StatefulWidget {
  const SharedPrefPage({Key? key}) : super(key: key);

  @override
  State<SharedPrefPage> createState() => _SharedPrefPageState();
}

class _SharedPrefPageState extends State<SharedPrefPage> {

<<<<<<< HEAD
  bool status = false;

  final Future<SharedPreferences> _myPref = SharedPreferences.getInstance();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final String usernameDB = "mobile";
  final String passwordDB = "mobile123";

=======
  final Future<SharedPreferences> _myPref = SharedPreferences.getInstance();

  final String usernameDB = "mobile";
  final String passwordDB = "mobile_e";

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text("Shared Preferenced"),
      ),
      body: Container(
=======
        title: Text("Shared Preference"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
<<<<<<< HEAD
                hintText: "Username",
=======
                hintText: "Username"
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
            _buildLoginButton(),
            _buildLogoutButton(),
<<<<<<< HEAD
            _buildCheckStatus()
=======
            _buildCheckStatusButton()
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(){
    return CommonSubmitButton(
        labelButton: "Login",
        submitCallback: (value){
<<<<<<< HEAD
          String currentUsername = _usernameController.value.text;
          String currentPassword = _passwordController.value.text;

          _prosesLogin(currentUsername, currentPassword);
=======
          _processLogin();
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
        }
    );
  }

<<<<<<< HEAD
=======
  void _processLogin() async{
    String currentUsername = _usernameController.value.text;
    String currentPassword = _passwordController.value.text;

    if(currentUsername == usernameDB && currentPassword == passwordDB){
      SharedPreferences getPref = await _myPref;
      await getPref.setBool("loginStatus", true);
    }
  }

>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
  Widget _buildLogoutButton(){
    return CommonSubmitButton(
        labelButton: "Logout",
        submitCallback: (value){
<<<<<<< HEAD
          _prosesLogout();
=======
          _processLogout();
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
        }
    );
  }

<<<<<<< HEAD
  Widget _buildCheckStatus(){
    return CommonSubmitButton(
        labelButton: "Check Status",
        submitCallback: (value){
          _prosesCheck();
        }
    );
  }

  void _prosesLogin(String username, String password) async {
    if(username == usernameDB && password == passwordDB){
      SharedPreferences getPref = await _myPref;
      await getPref.setBool("loginStatus", true);
    }
  }

  void _prosesLogout() async{
=======
  void _processLogout() async{
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
    SharedPreferences getPref = await _myPref;
    await getPref.setBool("loginStatus", false);
  }

<<<<<<< HEAD
  void _prosesCheck() async{
    SharedPreferences getPref = await _myPref;
    status = getPref.getBool("loginStatus") ?? false;
    _showToast("Current status {$status}", duration: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
=======
  Widget _buildCheckStatusButton(){
    return CommonSubmitButton(
        labelButton: "Check Status",
        submitCallback: (value){
          _processCheck();
        }
    );
  }

  void _processCheck() async{
    SharedPreferences getPref = await _myPref;
    bool status = getPref.getBool("loginStatus") ?? false;
    _showToast("Current Status : {$status}", duration: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
  }

  void _showToast(String msg, {Toast? duration, ToastGravity? gravity}){
    Fluttertoast.showToast(msg: msg, toastLength: duration, gravity: gravity);
  }
}
