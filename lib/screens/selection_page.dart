import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:som_seat_selection/const/color_const.dart';
import 'package:som_seat_selection/screens/layout_screen.dart';
import 'package:som_seat_selection/screens/seleted_seat_screen.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _searchController.dispose();
  }
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: FloatingActionButton.extended(
          onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => const SelectedSeat(),
              ),);
          },
          label: const Text('Confirm Seat'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: selectedSeatColor,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Select Your Seat',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            TextFormField(
              controller: _searchController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Search Seat No.',
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _searchController.clear();
                    SystemChannels.textInput.invokeMethod('TextInput.hide');  
                    FocusScope.of(context).unfocus();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Builder(
                      builder: (context) => LayoutWidget(
                            index: index,
                            searchBarText: _searchController.text,
                          ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
