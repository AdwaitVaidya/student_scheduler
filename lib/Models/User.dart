import '../Constants/Enums.dart';
import 'Course.dart';

class CurrentUser {
  // Required
  bool _signedIn;
  DateTime _userCreated;
  int _uniqueID;
  String _emailID;
  String _firstName;
  String _lastName;
  List<Course> _coursesTaken;

  // Not Required
  year _personYear;
  int _totalCredits;
  int _litCredits;
  int _humanCredits;
  int _socialCredits;
  int _natSciCredits;
  int _bioSciCredits;
  int _totalCreditsEnrolled;

  CurrentUser(String firstName, String lastName, String emailID) {
    this._firstName = firstName;
    this._lastName = lastName;
    this._emailID = emailID;
    this._userCreated = DateTime.now();
  }

  int get uniqueID => _uniqueID;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get emailID => _emailID;
  DateTime get userCreated => _userCreated;
  bool get signedIn => _signedIn;

  set signedIn(bool value) {
    _signedIn = value;
  }

  addCourse(Course course) {
    this._coursesTaken.add(course);
  }

  Course retCourse(int i) {
    return this._coursesTaken.elementAt(i);
  }

  Course retCourseAtID(int i) {
    return this._coursesTaken.elementAt(i);
  }
}
