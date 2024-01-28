// Primitive Types
let numericValue = 42; // Number
let textValue = "Hello"; // String
let booleanValue = true; // Boolean
let undefinedValue = undefined; // Undefined
let nullValue = null; // Null
let symbolValue = Symbol('unique'); // Symbol

// Object Types
let arrayValue = [1, 2, 3]; // Array
let objectValue = { key: 'value' }; // Object

// Functions
function myFunction() {
  // Function code
}

// typeof operator can be used to check the type of a variable
console.log(typeof numericValue); // "number"
console.log(typeof textValue); // "string"
console.log(typeof booleanValue); // "boolean"
console.log(typeof undefinedValue); // "undefined"
console.log(typeof nullValue); // "object" (Note: typeof null is an unfortunate quirk in JavaScript)
console.log(typeof symbolValue); // "symbol"
console.log(typeof arrayValue); // "object"
console.log(typeof objectValue); // "object"
console.log(typeof myFunction); // "function"


import React, { useState } from "react";
import "./App.css";

export default function App() {
  const [message, setMessage] = useState(false);

  const handleClick = () => {
    if (message.length === 0) {
      setMessage(true);
      setMessage("Welcome to my World");
    } else {
      setMessage("");
    }
  };
  return (
    <div>
      <h1>{message}</h1>
      <button onClick={handleClick}>Click Me</button>
    </div>
  );
}


import React, { useState } from 'react'
import './App.css'

export default function App() {
	const [message, setMessage] = useState(false)

	const handleClick = () => {
		setMessage(!message)
	}
	return (
		<div>
			{message && <h1>hi</h1>}
			<button onClick={handleClick}>Click Me</button>
		</div>
	)
}


// splice: Modifies array, adds/removes elements, returns removed elements.

// slice: Creates a shallow copy, extracts elements, does not modify original array.

//  Splice
// array.splice(start, deleteCount, item1, item2, ...);

const fruits = ["apple", "banana", "orange", "grape"];

// Remove 1 element starting from index 1
fruits.splice(1, 1);
console.log(fruits); // Output: ['apple', 'orange', 'grape']

// Replace 1 element starting from index 1 with 'kiwi' and 'melon'
fruits.splice(1, 1, "kiwi", "melon");
console.log(fruits); // Output: ['apple', 'kiwi', 'melon', 'grape']

// Add 'peach' and 'plum' starting from index 2 without removing any element
fruits.splice(2, 0, "peach", "plum");
console.log(fruits); // Output: ['apple', 'kiwi', 'peach', 'plum', 'melon', 'grape']

// Slice
const arrays = [1, 2, 3, 4, 5];
const newArray = arrays.slice(1, 3);
// array: [1, 2, 3, 4, 5]
// newArray: [2, 3]

// To find the Leap year or not a leap tear
function isLeapYear(year) {
  return (year % 4 === 0 && year % 100 !== 0) || year % 400 === 0;
}

let year = "2021";
if (year.length != 0 && year != 0 && !isNaN(parseInt(year))) {
  if (isLeapYear(year)) {
    console.log(`${year} is a leap year.`);
  } else {
    console.log(`${year} is not a leap year.`);
  }
} else {
  console.log("Invalid Year");
}

// Find the days in the month corresponding to the input number. Print Error if the input is not in a valid range.

let userInput = 2;
let month = Number(userInput);

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
    resu.push(arr[i]);
  }
}
console.log(resu);

// (or)

let arrs = "codekata".split("");
let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
let ress = arrs.filter((val) => !vowels.includes(val));
console.log(ress);

// (or)

let data = "codekata";
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

// find the output
arr = ["black", "purple", "blue"];
const obj = {
  arr: ["red", "blue", "green"],
  getLastColor: function () {
    return this.arr[this.arr.length - 1];
  },
  getFirstColor: () => this.arr[0], // if its an obj.arr means it takes inside the obj arr value and results in "red"
};
console.log(obj.getLastColor()); // green
console.log(obj.getFirstColor()); // black

// To find the sum of the two number
function twoSum(num, target) {
  let map = new Map();
  // here i greater than to num length
  for (let i = 0; i < num.length; i++) {
    const goal = target - num[i];
    // To find the product of two number the only difference is the  input num want to get divide the target value

    // const goal = target / num[i];

    if (map.has(goal)) {
      return [map.get(goal), i];
    }
    map.set(num[i], i);
  }
  return null;
}
const num = "2 7 5 3".split(" ").map(Number);
const target = 10;
const results = twoSum(num, target);
console.log(Object.values(results));
if (results != null) {
  const [index1, index2] = results;
  console.log(`Indices of the two numbers: ${index1}, ${index2}`);
  console.log(`Numbers: ${num[index1]}, ${num[index2]}`);
} else {
  console.log("No solution found.");
}

// To find the sum of the three number
function threeSum(num, target) {
  for (let i = 0; i < num.length - 2; i++) {
    const goal = target - num[i];
    let map = new Map();

    for (let j = i + 1; j < num.length; j++) {
      const complement = goal - num[j];

      if (map.has(complement)) {
        return [i, map.get(complement), j];
      }

      map.set(num[j], j);
    }
  }

  return null;
}

const num1 = "2 7 5 3".split(" ").map(Number);
const target1 = 15; // Change the target as needed
const results1 = threeSum(num1, target1);
if (results1 != null) {
  const [index1, index2, index3] = results;
  console.log(`Indices of the three numbers: ${index1}, ${index2}, ${index3}`);
  console.log(`Numbers: ${num[index1]}, ${num1[index2]}, ${num1[index3]}`);
} else {
  console.log("No solution found.");
}

// To find the number is prime or not

function isPrime(numbers) {
  if (numbers <= 1) {
    return false;
  }
  for (let i = 2; i <= Math.sqrt(numbers); i++) {
    if (numbers % i === 0) {
      return false;
    }
  }
  return true;
}
const numbers = 127;
console.log(isPrime(numbers));

// To find the prime range

function isPrime(num) {
  if (num <= 1) {
    return false;
  }
  for (let i = 2; i <= Math.sqrt(num); i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}
const startRange = 2;
const endRange = 10;

function primeRange(startRange, endRange) {
  for (let i = startRange + 1; i <= endRange - 1; i++) {
    if (isPrime(i)) {
      console.log(i);
    }
  }
}
primeRange(startRange, endRange);

// To remove the immediate duplicate
function removeImmediateDuplicate(n) {
  let line = n.split("");
  let str = line[0];

  for (let i = 1; i < line.length; i++) {
    if (line[i] != line[i - 1]) {
      str += line[i];
    }
  }
  return str;
}
const line = "1221331";
const out = removeImmediateDuplicate(line);
console.log(Number(out));

// To find the anagram
const word1 = "listen";
const word2 = "silent";

function isAnagram(w1, w2) {
  if (w1.length != w2.length) {
    return false;
  }

  const str1 = w1.replace(/\s/g, "").toLowerCase();
  const str2 = w2.replace(/\s/g, "").toLowerCase();

  const sort1 = str1.split("").sort().join("");
  const sort2 = str2.split("").sort().join("");

  return sort1 === sort2;
}

console.log(isAnagram(word1, word2));

// To find the duplicates in array

const array = [1, 2, 3, 4, 5, 4, 2];
const duplicates = array.filter((val, ind, arr) => arr.indexOf(val) != ind);
console.log(duplicates);

// To find the min and max value in array without using in built function

const a1 = [10, 20, 30, 40, 50, 60, 100];
const minValue = a1.reduce(function (acc, val) {
  return acc < val ? acc : val; // for max value acc > val
});
console.log(minValue);

// To find the second largest num in array

// using arrow func
const value = (arr) => {
  firstLargest = Math.max(...arr);

  let index = arr.indexOf(firstLargest);
  arr.splice(index, 1);
  return (secondLargest = Math.max(...arr));
};
const a2 = [10, 20, 30, 40, 50, 60, 90, 100];
console.log(value(a2));

// To find the missing num in the int array
const int = [10, 12, 13, 14, 25, 11, 18, 20];
const minVal = Math.min(...int);
const maxVal = Math.max(...int);
for (let i = minVal; i <= maxVal; i++) {
  if (int.indexOf(i) < 0) console.log(i);
}

// To find the factor of the number

const nums = prompt("enter the number");
for (let i = 1; i <= num; i++) {
  if (nums % i == 0) {
    console.log(i);
  }
}

//  Simple calculator
const selectOperator = prompt("enter the operator + - * /");
const number1 = parseFloat(prompt("enter the number"));
const number2 = parseFloat(prompt("enter the number"));

if (selectOperator == "+") {
  output = number1 + number2;
} else if (selectOperator == "-") {
  output = number1 - number2;
} else if (selectOperator == "*") {
  output = number1 * number2;
} else if (selectOperator == "/") {
  output = number1 / number2;
} else if (selectOperator == "") {
  output = alert(" Please select the operator to proceed");
}
console.log(output);

// To find the fibonacci series

let [c, d] = [0, 1];
for (let i = 0; i <= 10; i++) {
  let temp = c + d;
  c = d;
  d = temp;
  console.log(temp);
}

// write a program for following output
// ///// console.log("output with normalfunction",mul(2)(4)(6))
// using normal function
function mul(a) {
  return function (b) {
    return function (c) {
      return a + b + c;
    };
  };
}
console.log(mul(2)(4)(6));

// using arrow function
const call = (a) => {
  return (b) => {
    return (c) => {
      return a * b * c;
    };
  };
};
console.log(call(2)(4)(6));

// write a prog to return resolve if value is less / greater using promise

function checkInput(input) {
  return new Promise((resolve, reject) => {
    if (input <= 5) {
      resolve("its resolved");
    } else {
      reject("its rejected");
    }
  });
}
const input = 7;
checkInput(input)
  .then((result) => {
    console.log(result);
  })
  .catch((error) => {
    console.log(error);
  });

// Multiple without using * sign
function mul(a, b) {
  let res = 0;
  for (let i = 0; i < b; i++) {
    res += a;
  }
  return res;
}

console.log(mul(5, 5));
