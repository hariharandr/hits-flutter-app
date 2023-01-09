import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../pages/ug/ug_dept_page.dart';

class TopicItem extends StatelessWidget {
  const TopicItem({super.key});

  @override
  Widget build(BuildContext context) {
    var topic1 = 'UG';
    var topic2 = 'PG';
    var topic3 = 'RESEARCH';
    var topic4 = 'CODE';

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple,
      //   title: const Text('Topics'),
      //   actions: [
      //     IconButton(
      //       icon: Icon(
      //         FontAwesomeIcons.circleUser,
      //         color: Colors.pink[200],
      //       ),
      //       onPressed: () => Navigator.pushNamed(context, '/ugdept'),
      //     )
      //   ],
      // ),
      // drawer: TopicDrawer(topics: topics),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: [
          Hero(
            tag: 'topic1image',
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const UGDeptPage(),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 3,
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.graduationCap,
                          size: 100.0,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          topic1,
                          style: const TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Hero(
            tag: 'topic2image',
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const UGDeptPage(),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 3,
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.userGraduate,
                          size: 100.0,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          topic2,
                          style: const TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Hero(
            tag: 'topic3image',
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const UGDeptPage(),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 3,
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.book,
                          size: 100.0,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          topic3,
                          style: const TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Hero(
            tag: 'topic4image',
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const UGDeptPage(),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 3,
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.chalkboardUser,
                          size: 100.0,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          topic4,
                          style: const TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: const TopicDrawer(),
    );
  }
}

// class TopicScreen extends StatelessWidget {
//   final Topic topic;

//   const TopicScreen({super.key, required this.topic});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       body: ListView(children: [
//         Hero(
//           tag: topic.img,
//           child: Icon(FontAwesomeIcons.rocket, size: 100.0,),
//         ),
//         Text(
//           topic.title,
//           style: const TextStyle(
//               height: 2, fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ]),
//     );
//   }
// }
