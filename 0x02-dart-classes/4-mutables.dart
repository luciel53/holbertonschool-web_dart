class Password {
    String _password; // promise to initalize the _password later

	Password({required String password}) : _password = password;

	// getter
	String get password => _password;

	// setter
	set password(String value) => _password = value;

	bool isValid() {
		return (_password.length >= 8) &&
			(_password.length <= 16) &&
			(_password.contains(RegExp(r'[A-Z]'))) &&
			(_password.contains(RegExp(r'[0-9]'))) &&
			(_password.contains(RegExp(r'[a-z]')));
			}
		@override
		String toString() {
			return ("Your Password is: $_password");
		}
}
