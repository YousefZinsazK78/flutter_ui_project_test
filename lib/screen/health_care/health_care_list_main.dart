import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/screen/health_care/schedule_health_care.dart';
import 'package:google_fonts/google_fonts.dart';
import 'config/constants.dart';

class HealthCareListMain extends StatefulWidget {
  const HealthCareListMain({super.key});

  @override
  State<HealthCareListMain> createState() => _HealthCareListMainState();
}

class _HealthCareListMainState extends State<HealthCareListMain> {
  int currentIndex = 0;

  changeCurrentIndex(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  Widget changePages(int index) {
    var currentPage = [
      const HealthCareWidget(),
      const ScheduleHealthCare(),
      const HealthCareWidget(),
      const HealthCareWidget(),
      const HealthCareWidget(),
    ];
    return currentPage[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: changePages(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: changeCurrentIndex,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Report"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}

class HealthCareWidget extends StatelessWidget {
  const HealthCareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! appbar
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: NetworkImage(imageUserUrl), fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello!',
                        style: GoogleFonts.poppins(fontSize: 13),
                      ),
                      Text(
                        'Jane Nevis',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //! search box
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(6),
                  hintText: "Search medical...",
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  suffixIcon: Icon(Icons.settings),
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[100],
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 7),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                            ),
                            child: Text(
                              "Consultation",
                              style: GoogleFonts.poppins(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 7),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                            ),
                            child: Text(
                              "Doctor",
                              style: GoogleFonts.poppins(
                                color: Colors.purple.shade300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              "Actions",
              style: GoogleFonts.poppins(),
            ),

            const SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.purple.shade100.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.medical_information),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.purple.shade100.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.medication_liquid),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.purple.shade100.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.check),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.purple.shade100.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.settings),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              "Upcoming Appointments",
              style: GoogleFonts.poppins(),
            ),

            const SizedBox(
              height: 10,
            ),

            ///list view item
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple.shade100.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        margin: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple.shade100.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "12",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "Tue",
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "12:30 PM",
                                style: GoogleFonts.poppins(fontSize: 9),
                              ),
                            ),
                            Text(
                              "Dr.Mellisa Wins",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Cardiologist",
                              style: GoogleFonts.poppins(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple.shade100.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        margin: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple.shade100.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "17",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "Sun",
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "11:00 PM",
                                style: GoogleFonts.poppins(fontSize: 9),
                              ),
                            ),
                            Text(
                              "Dr.Joshua Bolt",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Surgeon",
                              style: GoogleFonts.poppins(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
