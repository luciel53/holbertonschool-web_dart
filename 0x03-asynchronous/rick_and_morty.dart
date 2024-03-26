import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    // Make HTTP GET request to Rick and Morty API
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Decode the response body
      final data = json.decode(response.body);

      // Extract character names and print them
      final List<dynamic> characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // If request failed, print the error message
      print('Failed to load characters: ${response.statusCode}');
    }
  } catch (e) {
    // Catch any errors that occur during the process
    print('Error caught: $e');
  }
}

void main() async {
  await printRmCharacters();
}
