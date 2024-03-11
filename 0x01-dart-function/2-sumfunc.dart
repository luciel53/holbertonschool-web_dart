int add(int a, int b) {
	return a + b;
}

int sub(int a, int b) {
	return a - b;
}

String showFunc(int a, int b) {
	var res1 = add(a, b);
	var res2 = sub(a, b);
	return ('Add $a + $b = $res1\nSub $a - $b = $res2');
}
