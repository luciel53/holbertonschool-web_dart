class Password {
	late String password; // promise to initalize the password later

	bool isValid() {
		return (password.length >= 8) &&
			(password.length <= 16) &&
			(password.contains(RegExp(r'[A-Z]'))) &&
			(password.contains(RegExp(r'[0-9]'))) &&
			(password.contains(RegExp(r'[a-z]')));
			}
		@override
		String toString() {
			return ("Your Password is: $password");
		}
}
