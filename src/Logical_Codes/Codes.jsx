// To find the Leap year or not a leap tear
function isLeapYear(year) {
  return (year % 4 === 0 && year % 100 !== 0) || year % 400 === 0;
}

let year = 2020;
if (isLeapYear(year)) {
  console.log(`${year} is a leap year.`);
} else {
  console.log(`${year} is not a leap year.`);
}

// Find the days in the month corresponding to the input number. Print Error if the input is not in a valid range.

let userInput = 2;
let month = Number(userInput[0]);

if (isNaN(month) || month < 1 || month > 12) {
  console.log("Error: Invalid month");
} else if (month === 2) {
  console.log("28 days");
} else if (
  month === 1 ||
  month === 3 ||
  month === 5 ||
  month === 7 ||
  month === 8 ||
  month === 10 ||
  month === 12
) {
  console.log("31 days");
} else if (month === 4 || month === 6 || month === 9 || month === 11) {
  console.log("30 days");
} else {
  console.log("Error: Invalid month");
}

// (or)

let userInputs = 9;
let months = Number(userInput);
const daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
if (isNaN(month) || month < 1 || month > 12) {
  console.log("Error: Invalid month");
} else {
  console.log(`${daysInMonth[month]} days`);
}

// To find the odd or even WITH "Modulo operator"
let m = "1017";
let number = Number(m);
if (number % 2 === 0) {
  console.log("even");
} else {
  console.log("odd");
}
// To find the odd or even WITHOUT "Modulo operator"
let x1 = "1017";
let n = Number(x1.slice(-1));
if (n === 0 || n === 2 || n === 4 || n === 6 || n === 8) {
  console.log("even");
} else {
  console.log("odd");
}

// Print the number which is repeated twice
let x = "13 12 13 12 13".split(" ");
let res = {};
for (let i = 0; i < x.length; i++) {
  if (res[x[i]]) {
    res[x[i]] += 1;
  } else {
    res[x[i]] = 1;
  }
}
console.log(res);
let ans = "";
for (let char in res) {
  if (res[char] === 2) {
    console.log(Number(char));
  }
}

// To remove the duplicate
let y = "A23 B56 B56 C79 D16".split(" ");
let original = new Set();
let duplicate = new Set();
for (let i = 0; i < y.length; i++) {
  if (original.has(y[i])) {
    duplicate.add(y[i]);
  } else {
    original.add(y[i]);
  }
}
console.log(...original, original.size);
console.log(...duplicate, duplicate.size);

// (or)

let arr1 = "A23 B56 B56 C79 D16".split(" ");
let original1 = [...new Set(arr1)];
console.log(original1);

// Remove vowels from array
let arr = "codekata".split("");
let resu = [];
for (let i = 0; i < arr.length; i++) {
  if (
    arr[i] != "a" &&
    arr[i] != "e" &&
    arr[i] != "i" &&
    arr[i] != "o" &&
    arr[i] != "u" &&
    arr[i] != "A" &&
    arr[i] != "E" &&
    arr[i] != "I" &&
    arr[i] != "O" &&
    arr[i] != "U"
  ) {
    res.push(arr[i]);
  }
}
console.log(resu);

// (or)

let arrs = "codekata".split("");
let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
let ress = arrs.filter((val) => !vowels.includes(val));
console.log(ress);

// (or)

let data = userInput[0];
let result = data
  .split("")
  .filter((char) => !"aeiouAEIOU".includes(char))
  .join("");
console.log(result);

// Swaping odd and even index character

let a = "codekata".split("");
for (let i = 0; i < a.length; i += 2) {
  let temp = a[i];
  a[i] = a[i + 1];
  a[i + 1] = temp;
}
console.log(a);
