import '3-util.dart';
import 'dart:async';

Future<String> greetUser() async {
	try {
		final userData = await fetchUserData();
		return ("Hello admin");
	} catch (error) {
		return ("error caught: $error");
	}
}

Future<String> loginUser() async {
	final boolCredentials = await checkCredentials();
	if (boolCredentials == true) {
		print("There is a user: true");
		return await greetUser();
	} else {
		print("There is a user: false ");
		return ("Wrong credentials");
	}
}
