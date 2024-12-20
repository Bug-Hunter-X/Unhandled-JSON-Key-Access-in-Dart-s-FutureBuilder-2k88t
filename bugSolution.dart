```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      if (data.containsKey('key')) {
        final value = data['key'];
        //Use the value safely
      } else {
        print('Key not found in JSON response.');
        // Handle missing key appropriately
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle other exceptions (e.g., network errors)
  }
}
```