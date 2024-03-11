void main(args) {
	var arg = int.parse(args[0]);
	if (arg > 0) {
		print('$arg is positive');
	} else if (arg == 0) {
		print("$arg is zero");
	} else {
		print("$arg is negative");
	}
}
