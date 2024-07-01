import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

class ReportData {
  ReportData({
    required this.date,
    required this.testResults,
    required this.symptoms,
    required this.reasonOfVisits,
    required this.hospitalName,
    required this.information,
  }) : id = uuid.v4();
  final String testResults;
  final String symptoms;
  final String reasonOfVisits;
  final String hospitalName;
  final String id;
  final String date;
  final String information;

// get formAttedDate {
//   return formatter.format(date);
// }
}