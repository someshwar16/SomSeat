import 'package:flutter/material.dart';
import 'package:som_seat_selection/const/color_const.dart';
import 'package:som_seat_selection/model/seat_view.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key, required this.index, this.searchBarText});
  final int index;
  final String? searchBarText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperTop(),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: containerColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          SeatView(
                            seatIndex: 1 + index * 8,
                            seatType: "Lower",
                            searchBarText: searchBarText,
                          ),
                          const SizedBox(height: 4.0),
                          SeatView(
                            seatIndex: 2 + index * 8,
                            seatType: "Middle",
                            searchBarText: searchBarText,
                          ),
                          const SizedBox(height: 4.0),
                          SeatView(
                            seatIndex: 3 + index * 8,
                            seatType: "Upper",
                            searchBarText: searchBarText,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperTop(),
                      child: Container(
                        width: 72,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: containerColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SeatView(
                        seatIndex: 7 + index * 8,
                        seatType: "S Lower",
                        searchBarText: searchBarText,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperBottom(),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: containerColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          SeatView(
                            seatIndex: 4 + index * 8,
                            seatType: "Lower",
                            searchBarText: searchBarText,
                          ),
                          //const SizedBox(height: 4.0,),
                          SeatView(
                            seatIndex: 5 + index * 8,
                            seatType: "Middle",
                            searchBarText: searchBarText,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          SeatView(
                            seatIndex: 6 + index * 8,
                            seatType: "Upper",
                            searchBarText: searchBarText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipPath(
                      clipper: MyCustomCliperBottom(),
                      child: Container(
                        height: 60,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: containerColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SeatView(
                        seatIndex: 8 + index * 8,
                        seatType: "S Upper",
                        searchBarText: searchBarText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 2),
      ],
    );
  }
}

class MyCustomCliperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height * 0.7;
    double width = size.width;
    Path path = Path()
      ..moveTo(0, height)
      ..lineTo(0, 0)
      ..lineTo(width, 0)
      ..lineTo(width, height)
      ..lineTo(width - 10, height)
      ..lineTo(width - 10, 10)
      ..lineTo(10, 10)
      ..lineTo(10, height)
      ..lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class MyCustomCliperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height * 0.3;
    double width = size.width;
    Path path = Path()
      ..moveTo(0, height)
      ..lineTo(0, size.height)
      ..lineTo(width, size.height)
      ..lineTo(width, height)
      ..lineTo(width - 10, height)
      ..lineTo(width - 10, size.height - 10)
      ..lineTo(10, size.height - 10)
      ..lineTo(10, height)
      ..lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
