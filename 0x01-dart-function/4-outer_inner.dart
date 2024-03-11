void outer(String name, String id) {
	String inner() {
		var firstName = name.substring(0, 7);
		var letter = name.substring(8, 9);
		return("Hello Agent $letter.$firstName your id is $id");
	};
	print(inner());
}

