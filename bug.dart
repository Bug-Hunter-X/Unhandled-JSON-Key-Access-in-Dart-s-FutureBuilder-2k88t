```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final Map<String, dynamic> data = jsonDecode(response.body);
      // Access data['key'] 
      //Error if key is not present
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Handle error appropriately
    // rethrow e;
  }
}
```