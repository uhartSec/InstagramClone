import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  static String HOSTNAME;


  /**
   * THE SAME SQFLITE methods for the datbase
   * this needs to go into class file becuase its reused many times
   */


  /**
   * SAME build item method, needs to go into classfile
   */

  

  bool is_loading = false;

  /**
   * THis method is to create a playlist
   */



  @override
  void initState() {
    super.initState();
  

 

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Container(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'DTunes',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      subtitle: Text(
                        'Created by: xXSlothAIXx',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  
                },
                leading: Icon(
                  Icons.device_hub,
                  color: Colors.red,
                ),
                title: Text('Devices', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  });
                },
                leading: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                ),
                title: Text('Sign Out', style: TextStyle(color: Colors.red)),
              )
            ],
          ),
        )),
  
        appBar: AppBar(
          title: Text('Playlists'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                
              },
            )
          ],
        ),
        body: is_loading
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
            : DefaultTabController(
                length: 5,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            //addSongForm(),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
          
                          return ListTile(
                            title: Text("testing"),
                            leading: Icon(
                              Icons.one_k, 
                            )
                          );
                        },
                        childCount: 10
                      ),
                    ),
                    
                  ],
                ),
              ));
  }
}