import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:som_seat_selection/const/color_const.dart';
import 'package:som_seat_selection/provider/select_button_provider.dart';

class SelectedSeat extends StatelessWidget {
  const SelectedSeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: selectedSeatColor,
        title: const Text(
          "Selected Seats",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer<ButtonProvider>(
            builder: (context, seatProvider, child) {
              return (seatProvider.selectedSeat.isEmpty)
                  ? const Center(
                      child: Text(
                        "No Seat Selected",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Seat Selected :- ${seatProvider.selectedSeat.length.toString()}",
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Expanded(
                          child: ListView.builder(
                              itemCount: seatProvider.selectedSeat.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Card(
                                    shape: const ContinuousRectangleBorder(),
                                    elevation: 1.0,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Berth Type:- ${seatProvider.selectedSeat[index].seatType}",
                                          style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "Seat No:- ${seatProvider.selectedSeat[index].seatNumber}",
                                          style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    );
            },
          )),
    );
  }
}
