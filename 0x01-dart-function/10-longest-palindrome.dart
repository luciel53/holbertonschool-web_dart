String longestPalindrome(String s) {
  if (s.length < 2) {
    return "none";
  }

  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j); // extract substring from i to j
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring; // update longest substring with palindrome found
      }
    }
  }

  if (longest.isEmpty) {
    return "none";
  } else {
    return longest;
  }
}

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
