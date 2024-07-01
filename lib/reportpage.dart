import 'package:flutter/material.dart';
import 'package:login_signup/reportinfo.dart';
import 'package:login_signup/reportwidget.dart';
import 'package:login_signup/homepage.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() {
    return _ReportScreenState();
  }
}

class _ReportScreenState extends State<ReportScreen> {

  final List<ReportData> _reports=[
    ReportData(date: '122-33', testResults: 'idk i dont have test results', symptoms:'ah ah haa i dont have anything i am 5it', reasonOfVisits:"Taking snap", hospitalName: 'Yashoda', information:"hiyuerhbfdjnkfnjbhvgfjdvnkjcbjhfdkdjiHFUEDJRBFGVJ IJURHFJBGVD JBGFVD JNCSKLHANUCBFGRCV JNCFKHUSGBAVC JNURCFAGBVV JV GFYUFVBD HVJCGFYGUHDCFYC VYZGJZHBACSDGYSTVCBFHCYGADVCFBHUUGYDFABCHJUC")
    ,ReportData(date: '122-33', testResults: 'idk i dont have test results', symptoms:'ah ah haa i dont have anything i am 5it', reasonOfVisits:"Taking snap", hospitalName: 'Yashoda', information:"hiyuerhbfdjnkfnjbhvgfjdvnkjcbjhfdkdjiHFUEDJRBFGVJ IJURHFJBGVD JBGFVD JNCSKLHANUCBFGRCV JNCFKHUSGBAVC JNURCFAGBVV JV GFYUFVBD HVJCGFYGUHDCFYC VYZGJZHBACSDGYSTVCBFHCYGADVCFBHUUGYDFABCHJUC")
    ,ReportData(date: '122-33', testResults: 'idk i dont have test results', symptoms:'ah ah haa i dont have anything i am 5it', reasonOfVisits:"Taking snap", hospitalName: 'Yashoda', information:"hiyuerhbfdjnkfnjbhvgfjdvnkjcbjhfdkdjiHFUEDJRBFGVJ IJURHFJBGVD JBGFVD JNCSKLHANUCBFGRCV JNCFKHUSGBAVC JNURCFAGBVV JV GFYUFVBD HVJCGFYGUHDCFYC VYZGJZHBACSDGYSTVCBFHCYGADVCFBHUUGYDFABCHJUC")
    ,ReportData(date: '122-33', testResults: 'idk i dont have test results', symptoms:'ah ah haa i dont have anything i am 5it', reasonOfVisits:"Taking snap", hospitalName: 'Yashoda', information:"hiyuerhbfdjnkfnjbhvgfjdvnkjcbjhfdkdjiHFUEDJRBFGVJ IJURHFJBGVD JBGFVD JNCSKLHANUCBFGRCV JNCFKHUSGBAVC JNURCFAGBVV JV GFYUFVBD HVJCGFYGUHDCFYC VYZGJZHBACSDGYSTVCBFHCYGADVCFBHUUGYDFABCHJUC")

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation:20,
            title: const Text('Journal'),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 59, 158, 201),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },

            ),
          ),
          body:
          ListView.builder(itemCount:_reports.length ,itemBuilder: (context,index)=>ReportList(report:_reports[index])


          )

      ),
    );
  }
}