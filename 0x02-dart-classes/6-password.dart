class Password {
	String _password = "";

	// constructor. When a new Password object is created, the value of password parameter is assigned to _password
	Password({required String password}) : _password = password;

	// getter, to access to _password value
	String get password => _password;

	// setter to update the _password value
	set password(String value) => _password = value;

	bool isValid() {
		// check if the password is valid with this conditions
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
