import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://scontent.fccj2-1.fna.fbcdn.net/v/t1.6435-1/164241813_305807937570538_1555684962858443674_n.jpg?stp=dst-jpg_p200x200&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=602xGR-UBqMAX-zyH29&_nc_ht=scontent.fccj2-1.fna&oh=00_AfADN7KMrfDYM0AOR3uNyfU-9U5T5L34tt_MYgSgk4JbsA&oe=6621F438'),
                ),
                title: Text(
                  'Rohit Sharma',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('See your Profile'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                 spacing: 50,
                children: [
                  _customContainer(
                   imageUrl: ('https://cdn-icons-png.flaticon.com/128/11820/11820135.png'),
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'Memories',
                    size: 24,
                  ),
                  _customContainer(
                   imageUrl: ('https://cdn-icons-png.flaticon.com/128/11820/11820237.png'),
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'Saved',
                    size: 24,
                  ),
                  _customContainer(
                    imageUrl: ('https://cdn-icons-png.flaticon.com/128/11820/11820089.png'),
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'Groups',
                    size: 24,
                  ),
                  _customContainer(
                    imageUrl: ('https://cdn-icons-png.flaticon.com/128/11820/11820289.png'),
                    
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'Video',
                    size: 24,
                    
                  ),
                  _customContainer(
                    imageUrl: ('https://cdn-icons-png.flaticon.com/128/11668/11668654.png'),
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'Marketplace',
                    size: 15, 
                    
                  ),
                  _customContainer(
                    imageUrl: ('https://cdn-icons-png.flaticon.com/128/11820/11820085.png'),
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'friends',
                    size: 24, 
                    
                  ),
                  _customContainer(
                    imageUrl: ('https://cdn-icons-png.flaticon.com/128/11820/11820058.png'),
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'Feeds',
                    size: 24, 
                    
                  ),
                  _customContainer(
                    imageUrl: ('https://cdn-icons-png.flaticon.com/128/6779/6779091.png'),
                    color: const Color.fromRGBO(246, 247, 248, 1),
                    text: 'Events',
                    size: 30, 
                    
                  ),
                ],
              ),
            ),
           Padding(
            
             padding: const EdgeInsets.all(2.0),
             child: GestureDetector(
              onTap: (){
                
              },
               child: Container( 
                
                
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 203, 195, 195)),
                height: 20,
               width: 330,
               child: const Center(child: Text('See more',style: TextStyle(color: Colors.black),
               ),
               ),
                 
               ),
             ),
             
           ),
          ],
        ),
        
      ),
    );
  }


  Widget _customContainer( {
    required Color color,
    required String text,
    required String imageUrl,
    required double size,
  }) {
    return Padding(
  
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        height:50,
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
             imageUrl,
             width: 30, 
             height: 30, 
                          ),
             const SizedBox(width: 8),
             Text(
               text,
               style: const TextStyle(
                
                 color: Colors.black,
                 fontSize: 12,
                 fontWeight: FontWeight.bold,
               ),
             ),
          ],
        ),
      ),
      
    );
  }
}
