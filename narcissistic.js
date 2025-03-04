function narcissistic(value) {
  // Code me to return true or false
  const digits = value.toString().split('');;
  const numDigits = digits.length;

  const sum = digits.reduce((acc, curr) => {
    return acc + (parseInt(curr) ** numDigits)
  },0)
  return sum === value;
}

function narcissistic2(value) {
  // Code me to return true or false
  return (
    ("" + value).split("").reduce((p, c) => {
      return p + Math.pow(c, ("" + value).length);
    }, 0) === value
  );
}

const narcissistic3 = (value) => {
  return value.toString().split('').reduce((acc, curr) => { return acc + parseInt(curr) ** value.toString().length }, 0) === value;
};

console.log(narcissistic(7)); // Output: true
console.log(narcissistic(153)); // Output: true
console.log(narcissistic2(7)); // Output: true
console.log(narcissistic2(153)); // Output: true
console.log(narcissistic3(7)); // Output: true
console.log(narcissistic3(153)); // Output: true
