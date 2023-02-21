import 'package:dio/dio.dart';
import 'package:flutter_cf_tube/const/api.dart';
import 'package:flutter_cf_tube/model/video_model.dart';

class YoutubeRepository {
  static Future<List<VideoModel>> getVideos() async {
    final response = await Dio().get(
      YOUTUBE_API_BASE_URL,
      queryParameters: {
        'channelId': CF_CHANNEL_ID,
        'maxResults': 50,
        'key': API_KEY,
        'part': 'snippet',
        'order': 'date',
      },
    );

    final videoData = response.data['items'].where(
      (item) =>
          item?['id']?['videoId'] != null && item?['snippet']?['title'] != null,
    );

    return videoData.map<VideoModel>(
      (item) => VideoModel(
        id: item['id']['videoId'],
        title: item['snippet']['title'],
      ),
    ).toList();
  }
}
