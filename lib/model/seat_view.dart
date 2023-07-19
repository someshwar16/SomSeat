import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:som_seat_selection/const/color_const.dart';
import 'package:som_seat_selection/model/seat.dart';
import 'package:som_seat_selection/provider/select_button_provider.dart';

class SeatView extends StatefulWidget {
  var searchBarText;
  var seatIndex;
  var seatType;

  SeatView(
      {super.key,
      required this.seatIndex,
      required this.seatType,
      this.searchBarText});

  @override
  State<SeatView> createState() => _SeatViewState();
}

class _SeatViewState extends State<SeatView> {
  Seat seat = Seat();
  @override
  void initState() {
    seat = Seat(seatNumber: widget.seatIndex, seatType: widget.seatType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ButtonProvider>(
      builder: (context, buttonProvider, child) {
        return GestureDetector(
          onTap: () {
            if (buttonProvider.selectedSeat.contains(seat)) {
              buttonProvider.removeSeat(seat);
            } else {
              buttonProvider.addSeat(seat);
            }
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: (widget.searchBarText == widget.seatIndex.toString())
                      ? selectedSeatColor
                      : Colors.transparent,
                ),
              ],
              border: Border.all(
                width: 5.0,
                color: (widget.searchBarText == widget.seatIndex.toString())
                    ? selectedSeatColor
                    : Colors.transparent,
              ),
              color: (buttonProvider.selectedSeat.contains(seat))
                  ? selectedSeatColor
                  : seatColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.seatIndex.toString(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: (buttonProvider.selectedSeat.contains(seat))
                        ? containerColor
                        : selectedSeatColor,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  widget.seatType,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: (buttonProvider.selectedSeat.contains(seat))
                        ? containerColor
                        : selectedSeatColor,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
