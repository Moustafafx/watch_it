import 'package:flutter/material.dart';
import 'package:flutter_application_1/ids.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("watch_it")),
      body: ListView.builder(
        itemCount: ids.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: ids[index]["id"],
                  flags: YoutubePlayerFlags(autoPlay: false, mute: false),
                ),
              ),

              Text(ids[index]["title"]),
            ],
          );
        },
      ),
    );
  }
}
