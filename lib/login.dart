import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'base.dart'; 


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String HOST;


  bool _isLoading = false;

  /**
   * Get our network: Need to add this to a class file
   */




  /**
   * Username and password text controller
   * Hide password
   */

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

/**
 * Text section component
 */
  Container textSection() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin: EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              txtUser("User", Icons.email),
              SizedBox(height: 30.0),
              txtPassword("Password", Icons.lock),
              SizedBox(height: 60.0),
              GestureDetector(
                onTap: () {
              
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                
                  
                },
                child: Container(
                  height: 55,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(
                    child: Text('Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

//OUR USERNAME TEXT FIELD
  TextFormField txtUser(String title, IconData icon) {
    return TextFormField(
      controller: usernameController,
      style: TextStyle(color: Colors.red),
      decoration: InputDecoration(    
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(icon)),
    );
  }

//OUR USERNAME TEXT FIELD
  TextFormField txtPassword(String title, IconData icon) {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      style: TextStyle(color: Colors.red),
      decoration: InputDecoration(
    
  
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(icon)),
    );
  }

//HEADER section for logo and intro to the app

  Container headerSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Container(
          width: 600,
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  title: Text('Instagram Clone',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.red,
                      )),
                  subtitle: Text('$HOST',
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  leading: Icon(
                    Icons.music_video,
                    color: Colors.red,
                    size: 50,
                  ),
                )
              ],
            ),
          ),
        ));
  }

/**
 * Get the network on state
 */

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
            color: Colors.red,
          ),
          onPressed: () {
            
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(

              height: MediaQuery.of(context).size.height,
              child: _isLoading
                  ? Center(
                      child: Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 300,
                          ),
                          CircularProgressIndicator(),
                        ],
                      ),
                    ))
                  : Column(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        headerSection(),
                        SizedBox(
                          height: 30,
                        ),
                        textSection(),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
