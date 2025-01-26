```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // Handle the JSON data
      print(jsonData); //this will print the json data in console
    } else {
      // Handle error here
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exception here
    print('Error: $e');
    rethrow; //rethrow exception to be handled by the caller
  }
}

void main() async {
  await fetchData();
}
```