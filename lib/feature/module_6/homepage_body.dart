import 'package:flutter/material.dart';
import 'package:praktikum_mobile_2022_plug_e/feature/module_6/hive/contact_list.dart';
import 'package:praktikum_mobile_2022_plug_e/feature/module_6/shared_pref/shared_pref_page.dart';
import 'package:praktikum_mobile_2022_plug_e/tools/common_submit_button.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      child: Column(
        children: [
          Text("Module 5", style: TextStyle(fontSize: 24),),
          CommonSubmitButton(
              labelButton: "Shared Preferenced",
              submitCallback: (String value) {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SharedPrefPage())
                );
              }
          ),
          CommonSubmitButton(
              labelButton: "Hive Database",
              submitCallback: (String value) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ContactList())
                );
              }
=======
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Module 6",
              style: TextStyle(fontSize: 24),
            ),
          ),
          CommonSubmitButton(
            labelButton: 'Shared Preference',
            submitCallback: (String ) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SharedPrefPage())
              );
            },
          ),
          CommonSubmitButton(
            labelButton: 'Hive Database',
            submitCallback: (String ) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactList())
              );
            },
>>>>>>> fa55e97a5f935aab629a524effe1bd0f9777eab5
          )
        ],
      ),
    );
  }
}
