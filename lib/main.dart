import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Fragment/Access_alarmFragment.dart';
import 'Fragment/Account_balanceFragment.dart';
import 'Fragment/Contact_mailFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/Mail_lockFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';




void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,

      home: HomeActivity(),
    );
  }

}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.search),text: 'search',),
                Tab(icon: Icon(Icons.email),text: 'email',),
                Tab(icon: Icon(Icons.settings),text: 'settings',),
                Tab(icon: Icon(Icons.contact_mail),text: 'contact_mail',),
                Tab(icon: Icon(Icons.person),text: 'person',),
                Tab(icon: Icon(Icons.access_alarm),text: 'access_alarm',),
                Tab(icon: Icon(Icons.mail_lock),text: 'mail_lock',),
                Tab(icon: Icon(Icons.account_balance),text: 'account_balance',)

              ],
            ),
          ),
          body:TabBarView(
            children: [

              HomeFragment(),
              SearchFragment(),
              EmailFragment(),
              SettingsFragment(),
              Contact_mailFragment(),
              PersonFragment(),
              Access_alarmFragment(),
              Mail_lockFragment(),
              Account_balanceFragment()

            ],
          ),

        )
    );
  }

}