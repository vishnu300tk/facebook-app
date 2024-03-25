
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Video',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                color: Colors.black,
                AssetImage('assets/search.png'),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                color: Colors.black,
                AssetImage('assets/user-profile.png'),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: [
              Tab(
                text: "For you",
              ),
              Tab(
                text: "Live",
              ),
              Tab(
                text: "Gaming",
              ),
              Tab(
                text: "Reels",
              ),
              Tab(
                text: "Following",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Video content for each tab
            _buildVideoContent("For you"),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoContent(final category) {
    // YouTube video ID
    const videoId = "@malayalamsongslive";

    // Return a YoutubePlayer widget
    return YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          loop: true,
        ),
      ),
      showVideoProgressIndicator: true,
    );
  }
}

