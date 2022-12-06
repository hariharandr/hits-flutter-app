// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// Future main() async {
//   //If you're running an application and need to access the binary messenger before runApp() has been called (for example, during plugin initialization), then you need to explicitly call the
//   WidgetsFlutterBinding.ensureInitialized();

//   if (Platform.isAndroid) {
//     await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
//   }

//   runApp(const VideoDetails());
// }

// class VideoDetails extends StatefulWidget {
//   const VideoDetails({Key? key}) : super(key: key);

//   @override
//   State<VideoDetails> createState() => _VideoDetailsState();
// }

// class _VideoDetailsState extends State<VideoDetails> {
//   late InAppWebViewController webView;
//   InAppWebViewController? webViewController;
//   final GlobalKey webViewKey = GlobalKey();

//   final InAppWebViewGroupOptions _options = InAppWebViewGroupOptions(
//       crossPlatform: InAppWebViewOptions(
//         useShouldOverrideUrlLoading: true,
//         mediaPlaybackRequiresUserGesture: false,
//       ),
//       android: AndroidInAppWebViewOptions(
//         useHybridComposition: true,
//       ),
//       ios: IOSInAppWebViewOptions(
//         allowsInlineMediaPlayback: true,
//       ));

//   late PullToRefreshController pullToRefreshController;
//   String url = "";
//   double progress = 0;
//   final urlController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();

//     pullToRefreshController = PullToRefreshController(
//       options: PullToRefreshOptions(
//         color: Colors.blue,
//       ),
//       onRefresh: () async {
//         if (Platform.isAndroid) {
//           webViewController?.reload();
//         } else if (Platform.isIOS) {
//           webViewController?.loadUrl(
//               urlRequest: URLRequest(url: await webViewController?.getUrl()));
//         }
//       },
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: const Text("Some Random Title")),
//           body: SafeArea(
//               child: Column(children: <Widget>[
//             Expanded(
//               child: Stack(
//                 children: [
//                   InAppWebView(
//                     key: webViewKey,
//                     initialUrlRequest: URLRequest(
//                       url: Uri.parse(
//                           "https://drive.google.com/file/d/1vwLAljWAYCbaBWXGNhxFH5UBYLml-8VZ/view?usp=sharing"),
//                     ),
//                     initialOptions: _options,
//                     pullToRefreshController: pullToRefreshController,
//                     onWebViewCreated: (controller) {
//                       webViewController = controller;
//                     },
//                     onLoadStart: (controller, url) {
//                       setState(() {
//                         this.url = url.toString();
//                         urlController.text = this.url;
//                       });
//                     },
//                     androidOnPermissionRequest:
//                         (controller, origin, resources) async {
//                       return PermissionRequestResponse(
//                           resources: resources,
//                           action: PermissionRequestResponseAction.GRANT);
//                     },
//                     shouldOverrideUrlLoading:
//                         (controller, navigationAction) async {
//                       // var uri = navigationAction.request.url!;

//                       return NavigationActionPolicy.ALLOW;
//                     },
//                     onLoadStop: (controller, url) async {
//                       pullToRefreshController.endRefreshing();
//                       setState(() {
//                         this.url = url.toString();
//                         urlController.text = this.url;
//                       });
//                     },
//                     onLoadError: (controller, url, code, message) {
//                       pullToRefreshController.endRefreshing();
//                     },
//                     onProgressChanged: (controller, progress) {
//                       if (progress == 100) {
//                         pullToRefreshController.endRefreshing();
//                       }
//                       setState(() {
//                         this.progress = progress / 100;
//                         urlController.text = this.url;
//                       });
//                     },
//                     onUpdateVisitedHistory: (controller, url, androidIsReload) {
//                       setState(() {
//                         this.url = url.toString();
//                         urlController.text = this.url;
//                       });
//                     },
//                     onConsoleMessage: (controller, consoleMessage) {
//                       print(consoleMessage);
//                     },
//                   ),
//                   progress < 1.0
//                       ? LinearProgressIndicator(value: progress)
//                       : Container(),
//                 ],
//               ),
//             ),
//             ButtonBar(
//               alignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 ElevatedButton(
//                   child: const Icon(Icons.arrow_back),
//                   onPressed: () {
//                     webViewController?.goBack();
//                   },
//                 ),
//                 ElevatedButton(
//                   child: const Icon(Icons.arrow_forward),
//                   onPressed: () {
//                     webViewController?.goForward();
//                   },
//                 ),
//                 ElevatedButton(
//                   child: const Icon(Icons.refresh),
//                   onPressed: () {
//                     webViewController?.reload();
//                   },
//                 ),
//               ],
//             ),
//           ]))),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Video Player Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://drive.google.com/file/d/1vwLAljWAYCbaBWXGNhxFH5UBYLml-8VZ/view',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Butterfly Video'),
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
