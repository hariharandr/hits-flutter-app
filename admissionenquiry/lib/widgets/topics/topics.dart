// import 'package:admissionenquiry/services/models.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:quizapp/services/services.dart';
// import 'package:quizapp/shared/shared.dart';
// import 'package:quizapp/topics/drawer.dart';

// import '../../widgets/app_bar.dart';
// import '../../widgets/drawer.dart';

// class TopicsScreen extends StatelessWidget {
//   const TopicsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Topic topic1 = {
//       'id': 'topic1image',
//       'title': 'UG',
//       'description': '',
//       'icon': ''
//     } as Topic;
//     List<Topic> topics = [Topic({})];

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: const Text('Topics'),
//         actions: [
//           IconButton(
//             icon: Icon(
//               FontAwesomeIcons.circleUser,
//               color: Colors.pink[200],
//             ),
//             onPressed: () => Navigator.pushNamed(context, '/profile'),
//           )
//         ],
//       ),
//       drawer: TopicDrawer(topics: topics),
//       body: GridView.count(
//         primary: false,
//         padding: const EdgeInsets.all(20.0),
//         crossAxisSpacing: 10.0,
//         crossAxisCount: 2,
//         children: topics.map((topic) => TopicItem(topic: topic)).toList(),
//       ),
//       // bottomNavigationBar: const TopicDrawer(),
//     );
//   }
// }
