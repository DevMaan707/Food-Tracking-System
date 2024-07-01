import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';
import 'package:login_signup/signup.dart';
import 'package:login_signup/homepageinfo.dart';
import 'package:login_signup/waitline.dart';
import 'package:login_signup/reportpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageData home=HomePageData(address: 'Address', name: 'Patient1', age: 32, gender:'M', patientno: '89898989899', description:'End stage organ failure', symptoms: 'pain, breathlessness on minimal exertion or at rest, persistent cough, fatigue (extreme tiredness), limited physical activity, depression, anxiety, constipation.', tests:'MRI, CT, or PET scans', testResults:'awaited...', medication:'ACE inhibitors, Beta blockers, Hydralazine with nitrate', treatment: 'pacemakers, implantable cardioverter defibrillator (ICD), biventricular pacemakers');
  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(13), bottomRight: Radius.circular(20)),
        ),
        toolbarHeight: sheight * 0.08,
        leading: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
        ),
        leadingWidth: swidth * 0.2,
        actions: [
          const SizedBox(height: 1.0),
          Padding(
            padding: const EdgeInsets.only(right: 350),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => const LoginPageScreen()));
              },
              child: const CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('assets/pfp.png'),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 0.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Name : ${home.name}',
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'address : ${home.address}',
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 3.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Pt Id : ${home.patientno}',
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'Age/Sex : ${home.age}/${home.gender}',
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 50,
                  padding:
                  EdgeInsets.only(right: swidth * 0.7, top: sheight * 0.01),
                  child: const Text(
                    'Diagnosis',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //Discription
                      'Discription - :${home.description}',
                      style: const TextStyle(fontSize: 17.0),
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      //Symptons
                      'Symptons -  ${home.symptoms}',
                      style: const TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      //Tests
                      'Tests -  ${home.tests}',
                      style: const TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      //Tests Results
                      'Test Results -  ${home.testResults}',
                      style: const TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      //Treatment
                      'Treatment -  ${home.treatment}',
                      style: const TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.left,
                    ),

                    const SizedBox(height: 30.0),
                    Text(
                      //Medication
                      'Medication -  ${home.medication}',
                      style: const TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.left,
                    ),
                  SizedBox(height: 5,),
                  IconButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ReportScreen()));
                  }, icon: Icon(Icons.abc_outlined)),
                ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape:const CircleBorder(eccentricity: 0.0),
        child: const Icon(
          Icons.arrow_forward,
        ),
        backgroundColor: Colors.blue,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OrganWait()));
        },
      ),


    );
  }
}