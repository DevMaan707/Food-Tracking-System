import 'package:flutter/material.dart';
import 'package:login_signup/reportinfo.dart';

class ReportList extends StatelessWidget {
  const ReportList({super.key, required this.report});
  final ReportData report;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Card(
      // color: const Color.fromARGB(255, 59, 158, 201),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 39, 194, 60),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.calendar_today),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        report.date,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: sheight * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 186, 39, 129),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Text(
                    "REPORT :${report.information}",
                    overflow: TextOverflow.clip, // Clip the overflowed text
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.all(10),
              height: sheight * 0.06,
              width: swidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 186, 39, 129),
              ),
              child: SingleChildScrollView(
                child: Text(
                  "HOSPITAL : ${report.hospitalName}",
                  overflow: TextOverflow.clip, // Clip the overflowed text
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.all(10),
              height: sheight * 0.1,
              width: swidth * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 186, 39, 129),
              ),
              child: SingleChildScrollView(
                child: Text(
                  "REASON :${report.reasonOfVisits}",
                  overflow: TextOverflow.clip, // Clip the overflowed text
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.all(10),
              height: sheight * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 186, 39, 129),
              ),
              child: SingleChildScrollView(
                child: Text(
                  'SYMPTOMS : ${report.symptoms}',
                  overflow: TextOverflow.clip, // Clip the overflowed text
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.all(10),
              height: sheight * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 186, 39, 129),
              ),
              child: SingleChildScrollView(
                child: Text(
                  "RESULTS : ${report.testResults}",
                  overflow: TextOverflow.clip, // Clip the overflowed text
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
