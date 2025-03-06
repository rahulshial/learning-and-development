/**Write a function named first_non_repeating_letter† that takes a string input, and returns the first character that is not repeated anywhere in the string.

For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

If a string contains all repeating characters, it should return an empty string ("");

† Note: the function is called firstNonRepeatingLetter for historical reasons, but your function should handle any Unicode character. */

function firstNonRepeatingLetter(s) {
  // Add your code here
  const lowerCaseString = s.toLowerCase();
  for (let i = 0; i < s.length; i++) {
    const char = lowerCaseString[i];
    if (lowerCaseString.indexOf(char) === lowerCaseString.lastIndexOf(char)) {
      return s[i];
    }
  }
  return ''
}

console.log(firstNonRepeatingLetter('stress')); // Output: 't'
console.log(firstNonRepeatingLetter('sTreSS')); // Output: 'T'
console.log(firstNonRepeatingLetter('aabbcc')); // Output: ''
