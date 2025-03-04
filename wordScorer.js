/** Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

For example, the score of abad is 8 (1 + 2 + 1 + 4).

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid. */

function high(string) {
  const alphabetArray = new Array(26).fill(1).map((_, i) => String.fromCharCode(97 + i))

  let highestScoringWord = '';
  let highestScore = 0;

  // method 1:
  for (i = 0; i < string.split(" ").length; i++) {
    let score = Array.from(string.split(" ")[i]).reduce(
      (a, b) => a + (alphabetArray.indexOf(b) + 1), 0);
    if (score > highestScore) {
      highestScore = score;
      highestScoringWord = string.split(" ")[i];
    }
  }

  // Method 2
  string.split(" ").forEach(word => {
    let score = Array.from(word).reduce(
      (a, b) => a + (alphabetArray.indexOf(b) + 1),
      0
    );
    if (score > highestScore) {
      highestScore = score;
      highestScoringWord = word;
    }
  });
    

  return highestScoringWord
};

console.log(high('man i need a taxi up to ubud'))