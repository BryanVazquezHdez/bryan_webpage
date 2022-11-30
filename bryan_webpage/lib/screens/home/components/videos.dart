import 'package:bryan_webpage/screens/home/components/videos_card.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Video.dart';

class Videos extends StatelessWidget {
  const Videos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "Latest videos",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_videos.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: VideoCard(
                    video: demo_videos[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
