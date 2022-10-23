import 'package:flutter/material.dart';

import 'util/job_card.dart';
import 'util/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  final List jobsForYou = [
    // [ companyName, jobTitle, logoImagePath, hourlyRate ]
    ['Uber', 'UI Designer', 'lib/icons/uber.png', 45],
    ['Google', 'Product Dev', 'lib/icons/google.png', 85],
    ['Apple', 'Softwart Eng.', 'lib/icons/apple.png', 95]
  ];
  final List recentJobsForYou = [
    // [ companyName, jobTitle, logoImagePath, hourlyRate ]
    ['Nike', 'Web Designer', 'lib/icons/triangle.png', 25],
    ['Apple', 'Software Eng.', 'lib/icons/apple.png', 45],
    ['Google', 'Product Dev.', 'lib/icons/google.png', 65]
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   leading: Image.asset('lib/icons/menu_from_left.png', scale: 5),
      //   title: const Text('JOB APP'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          // abb bar
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'lib/icons/menu_from_left.png',
                //color: Colors.grey[800],
              ),
            ),
          ),

          // discover a new path
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 12),
            child: Text(
              "Discover a New Path",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          // search bar
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/search.png',
                              //color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a Job',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      //color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset('lib/icons/preferences.png'),
                  // color: Colors.white,),
                ),
              ],
            ),
          ),

          // for you -> job cards
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'For you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(height: 25),
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobsForYou.length,
                itemBuilder: (context, index) {
                  return JobCard(
                    companyName: jobsForYou[index][0],
                    jobTitle: jobsForYou[index][1],
                    logoImagePath: jobsForYou[index][2],
                    hourlyRate: jobsForYou[index][3],
                  );
                }),
          ),

          // recently add -> job titles
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          // const SizedBox(height: 25),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                  itemCount: recentJobsForYou.length,
                  itemBuilder: (context, index) {
                    return RecentJobCard(
                      companyName: recentJobsForYou[index][0],
                      jobTitle: recentJobsForYou[index][1],
                      logoImagePath: recentJobsForYou[index][2],
                      hourlyRate: recentJobsForYou[index][3],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
