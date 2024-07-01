import 'package:flutter/material.dart';
import 'package:login_signup/homepage.dart';

class OrganWait extends StatefulWidget {
  const OrganWait({super.key});

  @override
  State<OrganWait> createState() => _OrganWaitState();
}

class _OrganWaitState extends State<OrganWait> {
  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: swidth*0.2,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: sheight * 0.1), // Adjust as necessary for padding below the AppBar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Jun 30, 2024',
              style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 5.0), // Reduce the gap between the text and the image
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white, // Adjust background color if needed
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/picture.png', // Replace with your image asset path
                  width: swidth*0.56, // Adjust width as necessary
                  height: sheight*0.26, // Adjust height as necessary
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add some spacing between the image and the text
          Center(
            child: Column(
              children: [
                Text(
                  'Patient Name',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 3.0), // Spacing between the two lines of text
                Text(
                  'Patient ID',
                  style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0), // Add some spacing between the text and the row
          Container(
            height: 100, // Adjust height as necessary
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                //color: Colors.red, // Temporary color for visibility
                                child: Center(
                                    child: Icon(Icons.punch_clock_rounded)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                //color: Colors.green, // Temporary color for visibility
                                child: Center(child: Text(
                                    '45',
                                  style: TextStyle(fontSize: 45),
                                )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.blue, // Temporary color for visibility
                          child: Center(child: Text(
                            'months',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                           ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                //color: Colors.red, // Temporary color for visibility
                                child: Center(child: Icon(Icons.doorbell_sharp),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                //color: Colors.green, // Temporary color for visibility
                                child: Center(child: Text(
                                  '12',
                                    style: TextStyle(fontSize: 45),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.blue, // Temporary color for visibility
                          child: Center(child: Text(
                            'Queue',
                            style: TextStyle(fontSize: 20, color: Colors.black),),),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                //color: Colors.red, // Temporary color for visibility
                                child: Center(child: Icon(Icons.mail)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                //color: Colors.green, // Temporary color for visibility
                                child: Center(child: Text(
                                '...',
                                style: TextStyle(fontSize: 45),
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.blue, // Temporary color for visibility
                          child: Center(child:
                          Text(
                          'match',
                           style: TextStyle(fontSize: 20, color: Colors.black),
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
        ],
      ),
    );
  }
}

