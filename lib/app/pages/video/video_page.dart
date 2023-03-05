import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:seventh_player/app/utils/custom_progress.dart';
import 'package:seventh_player/core/data/stores/video_store.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final VideoStore videoStore = GetIt.instance.get<VideoStore>();

  @override
  void initState() {
    super.initState();
    videoStore.playVideo();
  }

  @override
  void dispose() {
    videoStore.videoPlayerController?.dispose();
    videoStore.chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton.icon(
            label: const Text(
              'Log out',
            ),
            onPressed: () {
              videoStore.chewieController?.pause();
              videoStore.showLogoutDialog(context);
            },
            icon: const Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: Observer(
        builder: (context) {
          if (videoStore.isLoading) {
            return const CustomProgress();
          }
          if (videoStore.errorMessage != null) {
            return Center(
              child: Text('${videoStore.errorMessage}'),
            );
          }
          return Center(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Chewie(
                controller: videoStore.chewieController!,
              ),
            ),
          );
        },
      ),
    );
  }
}
