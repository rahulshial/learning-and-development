/** Write a function, which takes a non-negative integer (seconds) as input and returns the time in a human-readable format (HH:MM:SS)

HH = hours, padded to 2 digits, range: 00 - 99
MM = minutes, padded to 2 digits, range: 00 - 59
SS = seconds, padded to 2 digits, range: 00 - 59
The maximum time never exceeds 359999 (99:59:59)

You can find some examples in the test fixtures. */

function readableTime(seconds) {
  const hours = Math.floor(seconds / 3600);
  const minutes = Math.floor((seconds % 3600) / 60);
  const secs = seconds % 60;
  //Pad Function: pad function ensures that each unit (hours, minutes, seconds) is padded to 2 digits.
  const pad = (num) => String(num).padStart(2, "0");

  return `${pad(hours)}:${pad(minutes)}:${pad(secs)}`;
}

function humanReadable(seconds) {
  const pad = (x) => { return x < 10 ? "0" + x : x };
  return pad(parseInt(seconds / (60 * 60))) + ":" +
         pad(parseInt((seconds / 60) % 60)) + ":" +
         pad(seconds % 60)
}

// console.log(readableTime(59))
// console.log(readableTime(86400))

console.log(humanReadable(9));
console.log(humanReadable(59));
console.log(humanReadable(86400));
