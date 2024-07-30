// import 'package:flutter/material.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// import 'package:myapp1/screens/profile/Dob.dart';
// import 'package:myapp1/screens/profile/assetimg.dart';
// import 'package:myapp1/screens/profile/dropdown.dart';
// import 'package:myapp1/screens/profile/slider.dart';
// import 'package:myapp1/screens/profile/txt.dart';
// import 'package:myapp1/screens/profile/welcomepage.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   runApp(MaterialApp(home: Home(prefs: prefs)));
//
// }
//
// class Home extends StatefulWidget {
//   final SharedPreferences prefs;
//   Home({Key? key, required this.prefs}) : super(key: key);
//
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   TextEditingController _name = TextEditingController();
//   TextEditingController _lastname = TextEditingController();
//   TextEditingController _domain = TextEditingController();
//   TextEditingController _email = TextEditingController();
//   final controller = ScrollController();
//
//   static const String KEYNAME = 'name'; // Key for SharedPreferences
//
//   @override
//   void initState() {
//     super.initState();
//     // Load saved values when the widget initializes
//     loadSavedData();
//   }
//
//   @override
//   void dispose() {
//     _name.dispose();
//     _lastname.dispose();
//     _domain.dispose();
//     _email.dispose();
//     super.dispose();
//   }
//
//   // Function to load saved data from SharedPreferences
//   void loadSavedData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _name.text = prefs.getString(KEYNAME) ?? '';
//     });
//   }
//
//   // Function to save data to SharedPreferences
//   void saveData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString(KEYNAME, _name.text);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Data saved successfully'),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text("Profile"),
//         titleTextStyle: TextStyle(
//           color: Colors.black,
//           fontSize: 30,
//           fontStyle: FontStyle.italic,
//         ),
//         backgroundColor: Color.fromRGBO(178, 220, 216, 1.0),
//         centerTitle: true,
//       ),
//
//       body: Scrollbar(
//         thumbVisibility: true, // Ensure scrollbar is always visible
//         controller: controller,
//
//         child: ListView(
//           controller: controller,
//           children: [
//             Column(
//               children: [
//                 ImageChoice(),
//                 SizedBox(height: 50),
//
//                 CustomContainer(youtube: 'First Name',
//                     sid: Icons.account_circle,
//                     speed: _name),
//                 SizedBox(height: 10.0),
//
//                 CustomContainer(youtube: 'Last Name',
//                     sid: Icons.ad_units,
//                     speed: _lastname),
//                 SizedBox(height: 10.0),
//
//                 CustomContainer(youtube: 'Domain',
//                     sid: Icons.account_tree_rounded,
//                     speed: _domain),
//                 SizedBox(height: 10.0),
//
//                 MyDropdownWidget(),
//                 SizedBox(height: 10.0),
//
//                 Slide(),
//                 DatePickerExample(),
//                 SizedBox(height: 10.0),
//
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 20),
//                   child: InternationalPhoneNumberInput(
//                     onInputChanged: (PhoneNumber number) {
//                       print(number.phoneNumber);
//                     },
//                     onInputValidated: (bool value) {
//                       print(value);
//                     },
//                     selectorConfig: SelectorConfig(
//                       selectorType: PhoneInputSelectorType.DIALOG,
//                     ),
//
//                     ignoreBlank: false,
//                     autoValidateMode: AutovalidateMode.disabled,
//                     selectorTextStyle: TextStyle(color: Colors.black),
//                     inputBorder: OutlineInputBorder(),
//                   ),
//                 ),
//                 SizedBox(height: 10.0),
//
//                 CustomContainer(youtube: 'Email',
//                   sid: Icons.accessibility_outlined,
//                   speed: _email,),
//                 SizedBox(height: 10.0),
//
//                 SizedBox(
//                   width: 150.0,
//                   height: 50.0,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         // Implement save functionality here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.zero,
//                         ),
//                         padding: EdgeInsets.all(10),
//                         backgroundColor: Colors.blueAccent.shade100,
//                         elevation: 15.0,
//                         textStyle: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                         ),
//                       ),
//                       child: Text('Save')
//                   ),
//                 ),
//                 SizedBox(height: 7.0),
//
//                 SizedBox(
//                   width: 250.0,
//                   height: 50.0,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                           MaterialPageRoute(builder: (context) =>
//                               Welcomepage(
//                                 name: _name.text,
//                                 lastname: _lastname.text,
//                                 domain: _domain.text,
//                                 email: _email.text,
//                               )
//                           )
//                       ); // Implement navigation to welcome page here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.zero,
//                       ),
//                       backgroundColor: Colors.blueAccent.shade100,
//                       elevation: 10.0,
//                       textStyle: TextStyle(
//                         color: Colors.blueAccent.shade100,
//                         fontSize: 20,
//                       ),
//                     ),
//                     child: Text('Go To Welcome Page'),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

