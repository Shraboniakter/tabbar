import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbar/Fragmant/Call.dart';
import 'package:tabbar/Fragmant/Contact.dart';
import 'package:tabbar/Fragmant/Edit.dart';
import 'package:tabbar/Fragmant/Home.dart';
import 'package:tabbar/Fragmant/Message.dart';
import 'package:tabbar/Fragmant/N.dart';
import 'package:tabbar/Fragmant/Search.dart';
import 'package:tabbar/Fragmant/setting.dart';
void main(){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home:Myapp(),
      debugShowCheckedModeBanner: false,


    );
  }

}
class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:8,
      child:Scaffold(
        appBar: AppBar(title: Text('Tab Bar'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon:Icon( Icons.home,),text: 'home',),
              Tab(icon:Icon( Icons.search,),text: 'search',),
              Tab(icon:Icon( Icons.call,),text: 'call',),
              Tab(icon:Icon( Icons.message,),text: 'message',),
              Tab(icon:Icon( Icons.notifications,),text: 'notifications',),
              Tab(icon:Icon( Icons.settings),text: 'setting',),
              Tab(icon:Icon( Icons.contact_page,),text: 'contact',),
              Tab(icon:Icon( Icons.edit,),text: 'edit',),

            ],),
        ),
        body: TabBarView(children: [
          Home(),
          Search(),
          Call(),
          Message(),
          N(),
          setting(),
          Contact(),
          Edit(),





        ],),
      ),
    );
  }

}

