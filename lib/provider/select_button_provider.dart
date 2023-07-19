
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:som_seat_selection/model/seat.dart';

class ButtonProvider with ChangeNotifier
{
  List<Seat> _selectedSeats = [];
  List<Seat> get selectedSeat => _selectedSeats;
 
 void addSeat(Seat seat)
 {
  _selectedSeats.add(seat);
  //TODO: Remove this log lines
  log("${seat.seatNumber} Added");
  notifyListeners();
 }

 void removeSeat(Seat seat)
 {
  _selectedSeats.remove(seat);
  log("${seat.seatNumber} Removed");
  notifyListeners();
 }

 bool isSeatSelected(Seat seat)
 {
    return _selectedSeats.contains(seat);
 }
}