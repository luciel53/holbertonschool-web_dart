bool isPalindrome(String s) {
	String sToRight = "";
	String sToLeft = "";

	if (s.length < 3) {
		return false;
	}

	for (int i = 0; i < s.length; i++) {
		sToRight += s.substring(i, i + 1);
	}
	for (int j = s.length - 1; j >= 0; j--) {
		sToLeft += s.substring(j, j + 1);
	}

	if (sToRight == sToLeft) {
		return true;
	} else {
		return false;
	}
}
