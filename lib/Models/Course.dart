import 'Professor.dart';

class Course {
  // Required
  int courseID;
  String courseName;
  Professor professorTeaching;
  var lectureTimes = new Map();
  var discussionTimes = new Map();

  // Not Required
  Professor teachingAssistant;
  int creditsGiven;
}
