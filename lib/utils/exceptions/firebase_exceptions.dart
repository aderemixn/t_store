class TFirebaseException implements Exception {
  final String code;

  TFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again.';

      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custom token.';

      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience.';

      case 'user-disabled':
        return 'The user account has been disabled.';

      case 'user-not-found':
        return 'No user found for the given credentials.';

      case 'invalid-email':
        return 'The email address is invalid.';

      case 'email-already-in-use':
        return 'The email address is already registered.';

      case 'wrong-password':
        return 'Incorrect password. Please try again.';

      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';

      case 'operation-not-allowed':
        return 'This operation is not allowed.';

      case 'network-request-failed':
        return 'Network error. Please check your internet connection.';

      case 'too-many-requests':
        return 'Too many requests. Please try again later.';

      case 'internal-error':
        return 'An internal Firebase error occurred. Please try again later.';

      case 'invalid-api-key':
        return 'The Firebase API key is invalid.';

      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase Authentication.';

      case 'app-deleted':
        return 'The Firebase app has been deleted.';

      case 'invalid-user-token':
        return 'The user credentials are no longer valid. Please sign in again.';

      case 'user-token-expired':
        return 'The user session has expired. Please sign in again.';

      case 'requires-recent-login':
        return 'Please sign in again before performing this action.';

      case 'provider-already-linked':
        return 'This provider is already linked to your account.';

      case 'credential-already-in-use':
        return 'This credential is already associated with another account.';

      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';

      case 'quota-exceeded':
        return 'The Firebase quota has been exceeded. Please try again later.';

      case 'permission-denied':
        return 'You do not have permission to perform this action.';

      case 'unavailable':
        return 'The Firebase service is currently unavailable. Please try again later.';

      case 'cancelled':
        return 'The operation was cancelled.';

      case 'deadline-exceeded':
        return 'The request timed out. Please try again.';

      case 'not-found':
        return 'The requested resource could not be found.';

      case 'already-exists':
        return 'The resource already exists.';

      case 'resource-exhausted':
        return 'Resource quota has been exhausted.';

      case 'failed-precondition':
        return 'The operation could not be completed due to a failed precondition.';

      case 'aborted':
        return 'The operation was aborted. Please try again.';

      case 'out-of-range':
        return 'The operation was attempted outside the valid range.';

      case 'unimplemented':
        return 'This operation is not implemented or supported.';

      case 'data-loss':
        return 'Unrecoverable data loss or corruption occurred.';

      case 'unauthenticated':
        return 'Authentication is required to perform this action.';

      default:
        return 'An unexpected Firebase error occurred. Please try again.';
    }
  }
}