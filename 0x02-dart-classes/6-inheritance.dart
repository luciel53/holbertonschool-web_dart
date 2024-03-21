import '6-password.dart';

class User extends Password {
	String? name;
	int? age;
	double? height;
	int? id;
	String user_password;

	// constructor, required parameters and
	User({
		required this.name,
		required this.age,
		required this.height,
		required this.id,
		required this.user_password
		}) : super(password: user_password);

	bool isValid() {
		// method that checks if the user informations are valid
		return name != null && super.isValid() && id != null && age != null && height != null;
	}

	// method that converts the user informations in json format
	Map<String, dynamic> toJson() {
		return {
			'id' : id?.toString(),
			'name' : name?.toString(),
			'age' : age?.toString(),
			'height' : height?.toString(),
		};
	}

	// static method that creates a a new object User with a json object
	static User fromJson(Map<dynamic, dynamic> userJson) {
		return User(
			id: userJson['id'] as int?,
			name: userJson['name'] as String?,
			age: userJson['age'] as int?,
			height: userJson['height'] as double?,
			user_password: userJson['user_password'] as String,
		);
	}

	String toString() {
		final password_final = Password(password: this.user_password);
		return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${password_final.isValid()})';
	}
}
