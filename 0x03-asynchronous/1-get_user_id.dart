import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
	final JsonUserData = await fetchUserData();
	final DecodedUserData = json.decode(JsonUserData);
	final UserId = DecodedUserData['id'];
	return UserId;
}
