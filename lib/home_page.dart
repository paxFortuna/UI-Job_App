import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Image.asset('lib/icons/menu_from_left.png', scale: 5),
        title: const Text('JOB APP'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 50),
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
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Discover a New Path",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),



          // search bar
          const SizedBox(height: 20),
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
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image.asset('lib/icons/preferences.png'),
                    // color: Colors.white,),
                ),
              ],
            ),
          ),

          // for you -> job cards


          // recently add -> job titles
        ],
      ),
    );
  }
}
