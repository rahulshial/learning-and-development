/** Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.

Example:

Given an input string of:

apples, pears # and bananas
grapes
bananas !apples
The output expected would be:

apples, pears
grapes
bananas
The code would be called like so:

var result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
// result should == "apples, pears\ngrapes\nbananas" */

const solution = (input, markers) => {
  return input.split('\n').map(line => {
    for (let marker of markers) {
      if (line.includes(marker)) {
        // console.log(line, "marker: ", marker)
        line = line.split(marker)[0];
        // console.log("trimmed: ", line, "marker: ", marker)

      }
    }
    return line.trimEnd()
  }).join('\n')
}

// console.log(solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])) 

// console.log(solution("aa bb cc ", []))
// console.log(
//   solution(
//     "mamCYS#H$X*wAFAB#ixLI-UgCQ#Oai\n fBhTn YNCC^CcIx%ZxUtCBwEzJW\\O\nixF/RQiabrPhcL\\-WBQKl^yD$tmNcjx",
//     ["@", "+", "#", "^", "$"]
//   )
// );

console.log(solution("x -M\ncH@At~\n H+Xm/u\n*Y~U*Hb~/Ak/o ZR^CqS%", ["+","~","\\","-","^","#","*","%","/","!","@"]));