import 'package:admissionenquiry/models/Course.dart';
import 'package:admissionenquiry/repository/ugData.dart';

class UGCourseRepository {
  Course getCourse(String name) {
    return Course(ugData[name]!["deptName"].toString(), name,
        ugData[name]!["courseInfo"]!);
  }
}
