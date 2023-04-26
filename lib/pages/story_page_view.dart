import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget{
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
  final controller = StoryController();
  final List<StoryItem> storyItems = [
    StoryItem.text(title: "'If you don't make time for wellness, you will be forced to make time for illness.'", backgroundColor: Colors.red)
  ];
    // TODO: implement build
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}