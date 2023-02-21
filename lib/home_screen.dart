import 'package:flutter/material.dart';
import 'package:flutter_cf_tube/component/custom_youtube_player.dart';
import 'package:flutter_cf_tube/model/video_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomYoutubePlayer(
        videoModel: VideoModel(
          id: '3Ck42C2ZCb8',
          title: '다트 언어 기본기 1시간만에 끝내기',
        ),
      ),
    );
  }
}
