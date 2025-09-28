class Environment {
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://api.example.com',
  );
  static const String apiKey = String.fromEnvironment('API_KEY');
  static const String clarityProjectId = String.fromEnvironment('CLARITY_PROJECT_ID');
}
