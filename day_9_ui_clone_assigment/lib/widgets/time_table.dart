import 'package:flutter/material.dart';

class TimeTable extends StatelessWidget {
  final String name_top, name_bottom, startHour, startMin, endHour, endMin;

  final List<String> participants;

  final Color color;

  const TimeTable({
    super.key,
    required this.name_top,
    required this.name_bottom,
    required this.startHour,
    required this.startMin,
    required this.endHour,
    required this.endMin,
    required this.participants,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20, // 왼쪽 패딩
          top: 35, // 위쪽 패딩
          right: 20, // 오른쪽 패딩
          bottom: 10, // 아래쪽 패딩
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Column(
                        children: [
                          Text(
                            startHour,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              height: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            startMin,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 24,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            endHour,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              height: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            endMin,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '$name_top\n',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 55,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8,
                                ),
                              ),
                              TextSpan(
                                text: name_bottom,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 55,
                                  fontWeight: FontWeight.w600,
                                  height: 0.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: participants.map((participant) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 20), // 참가자 사이의 간격을 추가
                              child: Text(
                                participant,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(
                                    participant == "ME"
                                        ? 1.0
                                        : 0.5, // 조건에 따라 투명도 설정
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
