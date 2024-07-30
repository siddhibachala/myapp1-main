import 'package:flutter/material.dart';
class MyDropdownWidget extends StatefulWidget {
  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  String? _selectedItem; // Make _selectedItem nullable

  // List of countries for the dropdown
  List<String> _dropdownItems = [
    'Male',
    'Female',
    'Other',
  ];

  //
  @override
  void initState() {
    super.initState();
    _selectedItem = null; // Initialize with null to show hint
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child:


      Container(
      width: double.infinity,
      // Occupy the entire width of the screen
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        // Optional: Add rounded corners
        border: Border.all(color: Colors.black.withOpacity(0.5), width: 1.0),
        // Thin black border with opacity
        color: Colors.white, // Set background color with opacity
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      // Optional: Adjust padding
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedItem,
          hint: Text('Select your Gender'),
          // Hint text when no country is selected
          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
          // Dropdown icon on the right
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
          // Optional: Adjust text style
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue; // Update selected item
            });
          },
          items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    ));
  }
}

