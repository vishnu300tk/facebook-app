
import 'package:facebook/market_page.dart';
import 'package:facebook/menu_page.dart';
import 'package:facebook/messenger_screen.dart';
import 'package:facebook/notification_page.dart';
import 'package:facebook/video_page.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Expanded(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'facebook',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  color: Colors.black,
                  AssetImage('assets/add.png')),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  color: Colors.black,
                  AssetImage('assets/search.png')),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Messages(),));
                },
                icon: const ImageIcon(
                  color: Colors.black,
                  AssetImage('assets/chat.png')),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: [
                const Tab(
                  icon: ImageIcon(
                    AssetImage('assets/home.png'),
                    size: 35,
                    
                  ),
                ),
                Tab(
                  icon: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const VideoPage(),));
                    },
                    child: const ImageIcon(
                      AssetImage('assets/video.png'),
                      size: 35,
                    ),
                  ),
                ),
                 Tab(
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const MarketPlace(),));
                    },
                    child: const ImageIcon(
                      AssetImage('assets/market.png'),
                      size: 35,
                    ),
                  ),
                ),
                 Tab(
                  icon:  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  NotificationPage(),));
                    },child: const ImageIcon(
                     AssetImage('assets/bell.png'),
                    size: 35,
                    ),),
                ),
                 Tab(
                  icon:  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const Menu(),));
                    },child: const Icon(
                    Icons.menu,
                    size: 35,
                    ),),
                ),
              ],
            ),
            
          ),
          
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        foregroundImage: NetworkImage('assets/user-profile.png'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const SizedBox(
                        width: 275,
                        height: 40,
                        child: SearchBar(
                          elevation: MaterialStatePropertyAll(1),
                          hintText: 'Write something here...',
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            color: Colors.green,
                            AssetImage('assets/photos.png'),
                            size: 35,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    color: Colors.grey,
                    height: 10,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                    height: 250,
                    child: ListView.builder(
                      itemCount: image.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image:  DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(image[index]
                                    ),),),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.blue, width: 3),
                                    ),
                                    child:   CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white,
                                      foregroundImage:NetworkImage(icons[index])
 ),
                                  ),
                                   
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    color: Colors.grey,
                    height: 10,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                          leading: const CircleAvatar(
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://scontent.fccj2-1.fna.fbcdn.net/v/t1.6435-1/164241813_305807937570538_1555684962858443674_n.jpg?stp=dst-jpg_p200x200&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=602xGR-UBqMAX-zyH29&_nc_ht=scontent.fccj2-1.fna&oh=00_AfADN7KMrfDYM0AOR3uNyfU-9U5T5L34tt_MYgSgk4JbsA&oe=6621F438'),
                          ),
                          title: Row(
                            children: [
                              const Text(
                                'Rohit Sharma',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                
                                'assets/check.png',
                                height: 15,
                                width: 15,
                              ),
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              const Text('12 minutes ago .'),
                              const SizedBox(width: 4,),
                            Image.asset('assets/world.png',
                            height: 15,
                            width: 15,),
                            ],
                          ),
                          trailing: Row(
                            
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'follow',
                                    style: TextStyle(color: Colors.blue),
                                  )),
                              const Icon(Icons.more_horiz),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(Icons.cancel),
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 250,
                  child: Image.network(
                      'https://th.bing.com/th?id=OIP.LH2E1yNlwMShgiW_ocUY2wHaFI&w=300&h=208&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
               
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}List<String>image=[
 "https://th.bing.com/th?id=OIP.UJH4VteG5opyVrHyZ9SDwAHaLY&w=201&h=309&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
 "https://th.bing.com/th?id=OIP.s0EPV8rrNqiUCGxi48Z5twHaLE&w=204&h=305&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
 "https://th.bing.com/th?id=OIP.zt8tfoAeZzkBrXfL6LuwnAHaLJ&w=203&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
 "https://th.bing.com/th?id=OIP.Egp83J8-AlHrN4zEPCPGiwHaLI&w=203&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
 "https://scontent.fccj2-1.fna.fbcdn.net/v/t1.6435-1/164241813_305807937570538_1555684962858443674_n.jpg?stp=dst-jpg_p200x200&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=602xGR-UBqMAX-zyH29&_nc_ht=scontent.fccj2-1.fna&oh=00_AfADN7KMrfDYM0AOR3uNyfU-9U5T5L34tt_MYgSgk4JbsA&oe=6621F438",
];
List<String>icons=[
  "https://th.bing.com/th/id/OIP.vVs9wQ0N00EvnVwzNaNPJAHaLJ?w=195&h=294&c=7&r=0&o=5&dpr=1.5&pid=1.7",
  "https://th.bing.com/th/id/OIP.wBUvKwUVWb3J-l7vm3tq1QHaJ9?w=195&h=262&c=7&r=0&o=5&dpr=1.5&pid=1.7",
  "https://th.bing.com/th/id/OIP.7FRLHq-WtH6U0NWfkyFYlQHaKi?w=195&h=278&c=7&r=0&o=5&dpr=1.5&pid=1.7",
  "https://th.bing.com/th/id/OIP.Zoco1xA0h-Ar9kM-LulXfgHaLE?w=195&h=292&c=7&r=0&o=5&dpr=1.5&pid=1.7",
  "https://1.bp.blogspot.com/-jKQKjzKXBFY/XSA2bi8wZaI/AAAAAAAAAyA/yORT6KI0kH024FGMsbeRkMP-2acB1NX7QCLcBGAs/s1600/IMG_20190706_111524.jpg",
];