import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

const Color _textColor = Colors.white;

class WeatherMainPage extends StatefulWidget {
  const WeatherMainPage({Key? key}) : super(key: key);

  @override
  _WeatherMainPageState createState() => _WeatherMainPageState();
}

class _WeatherMainPageState extends State<WeatherMainPage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/05/28/03/23/thunderstorm-4234254_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3.0,
                  sigmaY: 3.0,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.access_time,
                        color: _textColor,
                        size: 12,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "07:32 AM",
                        style: TextStyle(color: _textColor),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_location,
                        color: _textColor,
                        size: 12,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "New York",
                        style: TextStyle(color: _textColor),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 24.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Center(
                            child: Text("STORM", style: GoogleFonts.montserrat(
                              color: Colors.white
                            ),),
                          ),
                        ),
                        Container(
                          height: 120,
                          decoration: const BoxDecoration(
                            // color: Colors.blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("18", style: GoogleFonts.montserrat(
                                        fontSize: 84,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Text("℃", style: GoogleFonts.montserrat(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                  Text("Feels like 24", style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),),
                                ],
                              ),
                              const VerticalDivider(
                                color: Colors.white,
                              ),
                              Column(
                                children: [
                                  const Icon(WeatherIcons.wiDayCloudy, color: Colors.white,
                                  size: 84,),
                                  Text("18 - 40", style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Expanded(child: Center(child: Text("Sunrise 6 AM", style: GoogleFonts.montserrat(color: Colors.white),)),),
                            Expanded(child: Center(child: Text("Moonrise 9 PM",style: GoogleFonts.montserrat(color: Colors.white),)),),
                          ],
                        ),
                        SmoothPageIndicator(controller: _pageController, count: 3,
                        effect: WormEffect(
                          radius: 8,
                          dotWidth: 8,
                          dotHeight: 8,
                          dotColor: Colors.white.withOpacity(0.5),
                          activeDotColor: Colors.white,
                        ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  padding: const EdgeInsets.only(top: 8, bottom: 12, left: 16),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            WeatherIcons.wiDayCloudy,
                            color: Colors.white,
                            size: 38,
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "24°",
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                            child: const Center(
                              child: Text(
                                "NOW",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              WeatherIcons.wiDayCloudy,
                              color: Colors.white,
                              size: 38,
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "28°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: const BoxDecoration(),
                              child: const Center(
                                child: Text(
                                  "10 AM",
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              WeatherIcons.wiDayCloudy,
                              color: Colors.white,
                              size: 38,
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "28°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: const BoxDecoration(),
                              child: const Center(
                                child: Text(
                                  "10 AM",
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              WeatherIcons.wiDayCloudy,
                              color: Colors.white,
                              size: 38,
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "28°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: const BoxDecoration(),
                              child: const Center(
                                child: Text(
                                  "10 AM",
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              WeatherIcons.wiDayCloudy,
                              color: Colors.white,
                              size: 38,
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "28°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: const BoxDecoration(),
                              child: const Center(
                                child: Text(
                                  "10 AM",
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              WeatherIcons.wiDayCloudy,
                              color: Colors.white,
                              size: 38,
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "28°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: const BoxDecoration(),
                              child: const Center(
                                child: Text(
                                  "10 AM",
                                  style: TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  padding: const EdgeInsets.only(top: 8, bottom: 12, left: 16),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                            child: const Center(
                              child: Text(
                                "TODAY",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Icon(
                            WeatherIcons.wiDayCloudy,
                            color: Colors.white,
                            size: 38,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "23°-40°",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                            child: const Center(
                              child: Text(
                                "NOV 6",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "FRI",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Icon(
                              WeatherIcons.wiDaySunny,
                              color: Colors.white,
                              size: 38,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "23°-40°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "NOV 7",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "SAT",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Icon(
                              WeatherIcons.wiDaySunny,
                              color: Colors.white,
                              size: 38,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "23°-39°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "NOV 8",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "SUN",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Icon(
                              WeatherIcons.wiDaySunny,
                              color: Colors.white,
                              size: 38,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "19°-40°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "NOV 9",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "FRI",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Icon(
                              WeatherIcons.wiDaySunny,
                              color: Colors.white,
                              size: 38,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "23°-40°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "NOV 10",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "FRI",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Icon(
                              WeatherIcons.wiDaySunny,
                              color: Colors.white,
                              size: 38,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "23°-40°",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "NOV 11",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            )),
          )
        ],
      ),
    );
  }
}
