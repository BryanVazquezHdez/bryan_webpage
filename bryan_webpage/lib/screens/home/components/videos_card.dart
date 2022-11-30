import 'package:bryan_webpage/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../constants.dart';
import '../../../models/Video.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late YoutubePlayerController _controller;

  void initState() {
    final videoURL = widget.video.url!;
    final videoID = YoutubePlayerController.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        params: const YoutubePlayerParams(
            loop: false,
            color: 'transparent',
            desktopMode: true,
            strictRelatedVideos: true,
            showFullscreenButton: true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondayColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          widget.video.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Text(
          widget.video.description!,
          maxLines: Responsive.isMobileLarge(context) ? 4 : 5,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(height: 1.5),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 400,
          height: 230,
          child: Scaffold(
            body: ListView(children: [
              YoutubePlayerControllerProvider(
                controller: _controller,
                child: YoutubePlayerIFrame(controller: _controller),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
