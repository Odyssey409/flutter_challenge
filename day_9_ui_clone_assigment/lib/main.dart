import 'package:day_9_ui_clone_assigment/widgets/time_table.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/profile_img.jpg', // 프로필 이미지 URL
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Monday 16',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'TODAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('•',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 42,
                            )),
                      ),
                      Text(
                        '17  18  19  20',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TimeTable(
                  name_top: "DESIGN",
                  name_bottom: "MEETING",
                  startHour: "11",
                  startMin: "30",
                  endHour: "12",
                  endMin: "20",
                  participants: ["ALEX", "HELENA", "NANA"],
                  color: Color.fromARGB(255, 255, 249, 71),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TimeTable(
                  name_top: "DAILY",
                  name_bottom: "PROJECT",
                  startHour: "12",
                  startMin: "35",
                  endHour: "14",
                  endMin: "10",
                  participants: ["ME", "RICHARD", "CIRY", "+4"],
                  color: Color.fromARGB(207, 162, 85, 250),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TimeTable(
                  name_top: "WEEKLY",
                  name_bottom: "PLANNING",
                  startHour: "15",
                  startMin: "00",
                  endHour: "16",
                  endMin: "30",
                  participants: ["DEN", "NANA", "MARK"],
                  color: Color.fromARGB(255, 204, 250, 77),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
