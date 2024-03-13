String longestUniqueSubstring(String str) {
  Set<String> charSet = {};
  int ptr1 = 0, ptr2 = 0;
  String current = "";
  String longSubstring = "";

  while (ptr1 < str.length) {
	// check if char is already in the set
    if (!charSet.contains(str[ptr1])) {
	  // add if not in the set
      charSet.add(str[ptr1]);
      current += str[ptr1];
	  // check the size of the string
	  if (current.length > longSubstring.length) {
        longSubstring = current;
      }
    } else {
		// if char is already in the set
		// delete the char till the char of ptr1 is unique
        while (str[ptr2] != str[ptr1]) {
            charSet.remove(str[ptr2]);
            ptr2++;
    	}
		// move the pointer after the clone
    	ptr2++;
		current = str.substring(ptr2, ptr1 + 1);
    }
	// move the pointer to next position in the string
    ptr1++;
  }
  return longSubstring;

}
