// import 'package:flutter/material.dart';
// import 'package:intro_slider/dot_animation_enum.dart';
// import 'package:intro_slider/intro_slider.dart';
// import 'package:intro_slider/slide_object.dart';
// import 'package:intro_slider/scrollbar_behavior_enum.dart';
// import 'package:intro_slider_example/home.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: IntroScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class IntroScreen extends StatefulWidget {
//   IntroScreen({Key key}) : super(key: key);

//   @override
//   IntroScreenState createState() => new IntroScreenState();
// }

// // ------------------ Custom config ------------------
// class IntroScreenState extends State<IntroScreen> {
//   List<Slide> slides = [];

//   @override
//   void initState() {
//     super.initState();

//     slides.add(
//       new Slide(
//         title:
//             "A VERY LONG TITLE A VERY LONG TITLE A VERY LONG TITLE A VERY LONG TITLE A VERY LONG TITLE A VERY LONG TITLE A VERY LONG TITLE A VERY LONG TITLE A VERY LONG TITLE",
//         maxLineTitle: 2,
//         styleTitle: TextStyle(
//           color: Colors.white,
//           fontSize: 30.0,
//           fontWeight: FontWeight.bold,
//           fontFamily: 'RobotoMono',
//         ),
//         description:
//             "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
//         styleDescription: TextStyle(
//           color: Colors.white,
//           fontSize: 20.0,
//           fontStyle: FontStyle.italic,
//           fontFamily: 'Raleway',
//         ),
//         marginDescription:
//             EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
//         centerWidget: Text("Replace this with a custom widget",
//             style: TextStyle(color: Colors.white)),
//         backgroundImage: "images/forest.png",
//         directionColorBegin: Alignment.topLeft,
//         directionColorEnd: Alignment.bottomRight,
//         onCenterItemPress: () {},
//       ),
//     );
//     slides.add(
//       new Slide(
//         title: "CITY",
//         styleTitle: TextStyle(
//             color: Color(0xff7FFFD4),
//             fontSize: 30.0,
//             fontWeight: FontWeight.bold,
//             fontFamily: 'RobotoMono'),
//         description:
//             "Ye indulgence unreserved connection alteration appearance",
//         styleDescription: TextStyle(
//             color: Color(0xff7FFFD4),
//             fontSize: 20.0,
//             fontStyle: FontStyle.italic,
//             fontFamily: 'Raleway'),
//         backgroundImage: "images/city.jpeg",
//         directionColorBegin: Alignment.topRight,
//         directionColorEnd: Alignment.bottomLeft,
//       ),
//     );
//     slides.add(
//       new Slide(
//         title: "BEACH",
//         styleTitle: TextStyle(
//             color: Color(0xffFFDAB9),
//             fontSize: 30.0,
//             fontWeight: FontWeight.bold,
//             fontFamily: 'RobotoMono'),
//         description:
//             "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
//         styleDescription: TextStyle(
//             color: Color(0xffFFDAB9),
//             fontSize: 20.0,
//             fontStyle: FontStyle.italic,
//             fontFamily: 'Raleway'),
//         backgroundImage: "images/beach.jpeg",
//         directionColorBegin: Alignment.topCenter,
//         directionColorEnd: Alignment.bottomCenter,
//         maxLineTextDescription: 3,
//       ),
//     );
//   }

//   void onDonePress() {
//     // Do what you want
//     // Navigator.push(
//     //   context,
//     //   MaterialPageRoute(builder: (context) => HomeScreen()),
//     // );
//   }

//   void onNextPress() {
//     print("onNextPress caught");
//   }

//   Widget renderNextBtn() {
//     return Icon(
//       Icons.navigate_next,
//       color: Color(0xffF3B4BA),
//       size: 35.0,
//     );
//   }

//   Widget renderDoneBtn() {
//     return Icon(
//       Icons.done,
//       color: Color(0xffF3B4BA),
//     );
//   }

//   Widget renderSkipBtn() {
//     return Icon(
//       Icons.skip_next,
//       color: Color(0xffF3B4BA),
//     );
//   }

//   ButtonStyle myButtonStyle() {
//     return ButtonStyle(
//       shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
//       backgroundColor: MaterialStateProperty.all<Color>(Color(0x33F3B4BA)),
//       overlayColor: MaterialStateProperty.all<Color>(Color(0x33FFA8B0)),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new IntroSlider(
//       // List slides
//       slides: this.slides,

//       // Skip button
//       renderSkipBtn: this.renderSkipBtn(),
//       skipButtonStyle: myButtonStyle(),

//       // Next button
//       renderNextBtn: this.renderNextBtn(),
//       onNextPress: this.onNextPress,
//       nextButtonStyle: myButtonStyle(),

//       // Done button
//       renderDoneBtn: this.renderDoneBtn(),
//       onDonePress: this.onDonePress,
//       doneButtonStyle: myButtonStyle(),

//       // Dot indicator
//       colorDot: Color(0x33FFA8B0),
//       colorActiveDot: Color(0xffFFA8B0),
//       sizeDot: 13.0,

//       // Show or hide status bar
//       hideStatusBar: true,
//       backgroundColorAllSlides: Colors.grey,

//       // Scrollbar
//       verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
//     );
//   }
// }



// import 'package:flutter/material.dart';


// class IntroSlidePage extends StatefulWidget {
//   @override
//   _IntroSlidePageState createState() => _IntroSlidePageState();
// }

// class _IntroSlidePageState extends State<IntroSlidePage> {
//   List<Slide> slides = new List();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     slides.add(
//       new Slide(
//           title: "Hello Food",
//           description:
//               "The easiest way to order food from your favourite resturant!",
//           pathImage: "assets/images/hamburger.png"),
//     );
//         slides.add(
//       new Slide(
//           title: "Movie Tickets",
//           description:
//               "Book movie tickets for your family and friends",
//           pathImage: "assets/images/movie.png"),
//     );
//         slides.add(
//       new Slide(
//           title: "Great Discount",
//           description:
//               "Best disounts on every single services we offer!",
//           pathImage: "assets/images/discount.png"),
//     );
//         slides.add(
//       new Slide(
//           title: "World Travel",
//           description:
//               "Book tickets of any transportation and travel the world",
//           pathImage: "assets/images/travel.png"),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
