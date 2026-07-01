import 'package:flutter/services.dart';

class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials. Please double-check your information.';

      case 'too-many-requests':
        return 'Too many requests. Please try again later.';

      case 'invalid-argument':
        return 'An invalid argument was provided to the authentication method.';

      case 'invalid-password':
        return 'Incorrect password. Please try again.';

      case 'invalid-phone-number':
        return 'The provided phone number is invalid.';

      case 'operation-not-allowed':
        return 'The requested sign-in provider is disabled for this Firebase project.';

      case 'session-cookie-expired':
        return 'The Firebase session has expired. Please sign in again.';

      case 'uid-already-exists':
        return 'The provided user ID is already in use by another account.';

      case 'sign_in_failed':
        return 'Sign in failed. Please try again.';

      case 'network-request-failed':
        return 'Network error. Please check your internet connection.';

      case 'internal-error':
        return 'An internal error occurred. Please try again later.';

      case 'invalid-verification-code':
        return 'The verification code is invalid.';

      case 'invalid-verification-id':
        return 'The verification ID is invalid.';

      case 'quota-exceeded':
        return 'The request quota has been exceeded. Please try again later.';

      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase Authentication.';

      case 'keychain-error':
        return 'A keychain error occurred. Please restart the app and try again.';

      case 'web-context-cancelled':
        return 'The web authentication process was cancelled.';

      case 'channel-error':
        return 'A platform channel error occurred. Please restart the application.';

      default:
        return 'An unexpected platform error occurred. Please try again.';
    }
  }

  factory TPlatformException.fromPlatformException(PlatformException e) {
    return TPlatformException(e.code);
  }
}