import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          
                          return Container(
                            child: Column(children: [
                              ListTile(
                                title: Text("Jimmy Kimmel"),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1324110804434653185/wXwSq0wd_400x400.jpg"),
                                ),
                                subtitle: Text("Added you as a friend: "),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.45,
                                child: Stack(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://pbs.twimg.com/profile_images/1324110804434653185/wXwSq0wd_400x400.jpg"
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                
                                    ),
                                  )

                                ],),
                              )
                            ],)

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