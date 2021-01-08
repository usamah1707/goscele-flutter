class Constants {
  // Hive boxes names
  static const hiveBoxUserInfo = 'user_info';
  static const hiveBoxUserCourses = 'user_courses';

  // Hive box keys
  static const hiveKeyUserID = 'id';
  static const hiveKeyUserToken = 'token';
  static const hiveKeyUsername = 'username';
  static const hiveKeyUserFirstName = 'firstName';
  static const hiveKeyUserLastName = 'lastName';
  static const hiveKeyUserEmail = 'email';
  static const hiveKeyUserProfileImageUrl = 'profileImageUrl';
  static const hiveKeyUserProfileImageUrlSmall = 'profileImageUrlSmall';

  // API urls
  static const baseUrl = 'https://scele-dev.cs.ui.ac.id/';
  static const loginUrl = baseUrl + 'login/token.php';
  static const webServiceUrl = baseUrl + 'webservice/rest/server.php';

  // API endpoints
  static const getUserByField = 'core_user_get_users_by_field';
  static const getUserCourses = 'core_enrol_get_users_courses';

  // API params
  static const paramFunction = 'wsfunction';
  static const paramToken = 'wstoken';
  static const paramFormat = 'moodlewsrestformat';
  static const paramService = 'service';
  static const paramUsername = 'username';
  static const paramPassword = 'password';
  static const paramField = 'field';
  static const paramValues = 'values';

  // API values
  static const valueService = 'moodle_mobile_app';
  static const valueJsonFormat = 'json';
  static const valueUsername = 'username';
  static const valueUserId = 'userid';
}