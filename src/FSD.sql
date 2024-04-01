------------------------------------ Full Stack Developer-------------------------------------------------------

-- HTTP request-response cycle when URL gets hit what happening

When you enter a URL in a browser and hit enter, a series of steps, collectively known as the HTTP 
request-response cycle, takes place. Heres a simplified overview:

URL (Uniform Resource Locator) Parsing: The browser parses the URL to extract information like the protocol (HTTP/HTTPS),
domain, and path.

DNS Resolution: The browser resolves the domain name to an IP address using the Domain Name System (DNS).

TCP Handshake: A TCP (Transmission Control Protocol) connection is established between the browser and the server.

HTTP Request: The browser sends an HTTP request to the server. This includes the method (GET, POST, etc.), headers, and 
the path specified in the URL.

Server Processing: The server receives the request, processes it, and generates an appropriate response.

HTTP Response: The server sends back an HTTP response, which includes status codes, headers, and the requested content 
(HTML, images, etc.).

Rendering: The browser renders the received content, displaying it to the user.

This entire process happens in a matter of milliseconds, enabling users to interact with websites seamlessly.

-- TCP VS UDP(User Datagram Protocol)
Connection-Oriented vs. Connectionless:

TCP: Connection-oriented. It establishes a reliable, bidirectional communication channel before data exchange.
UDP: Connectionless. It does not establish a connection before sending data, providing a faster but less reliable 
communication.
Reliability:

TCP: Reliable. It ensures that data is delivered accurately and in the correct order through mechanisms like 
acknowledgments and retransmission of lost packets.
UDP: Unreliable. It does not guarantee delivery or order of packets; some packets may be lost without retransmission.

Flow Control and Congestion Control:
TCP: Implements flow control and congestion control mechanisms to manage data transfer efficiently and avoid network 
congestion.
UDP: Does not have built-in mechanisms for flow control or congestion control.

Header Size:
TCP: Larger header size due to additional control information for reliability.
UDP: Smaller header size as it carries less control information.

Usage Scenarios:
TCP: Used for applications requiring reliable and ordered delivery of data, such as web browsing, email, and 
file transfer (FTP).
UDP: Suitable for real-time applications where low latency is crucial, like streaming media, online gaming,
and VoIP.


-- Diff B/w find & filter method
filter() method returns the matched values in the array from the collection
find() method returns the first value that matches from the collection. Once it matches the value in finding, it will
not check the remaining values in the array collection 

-- Diff b/w map & forEach && shallow vs deep copy
map: Changing each element, applying a function to create a new set of values., new array, returns results.

forEach: Iterating, modifies in place, returns undefined.

Shallow Copy: Copies the top-level structure of an object or array, but not nested objects/arrays. Changes to nested 
elements affect the original.

Deep Copy: Creates a new object/array and recursively copies all nested objects/arrays, ensuring changes in the copy 
do not affect the original.

-- Babel
Babel is a JavaScript compiler that can translate markup or programming languages into JavaScript.React uses Babel to 
convert JSX into JavaScript.And that allows developers to write code using the latest ECMAScript (ES) standards and 
then transforms it into an older version of JavaScript that is compatible with a wider range of browsers.

-- Webpacks
Webpack is a module bundler that takes various assets, such as JavaScript files, CSS, and images, and bundles them 
together in a way that is optimized for the web.It often used to manage dependencies, handle code splitting, and 
optimize assets for production. Webpack can also be configured to use Babel to transpile JavaScript.

while Babel focuses on JavaScript code transformation for compatibility, 
Webpack is primarily used for bundling and optimizing various assets in a web project. 
They are often used together in modern JavaScript development workflows

-- Bundling:
Bundling in the context of web development refers to the process of combining multiple files or modules into a single file (bundle). 
This is commonly done to optimize the performance of web applications by reducing the number of HTTP requests made to the server.

--------------- HTML:----------

-- Web Page:

Content Focus: Web pages primarily display static content for information consumption.

Limited Interaction: Interactions are basic, like clicking links and filling out forms.

Lightweight: Web pages are lightweight, load quickly, and are optimized for content delivery.

Examples: Blogs, news sites, and informational websites are common web page examples.

Minimal Data Handling: They store minimal user data and typically dont require user accounts.

-- Web App:

Functionality Focus: Web apps are interactive and dynamic, offering complex functionality.

Rich Interaction: Users can perform advanced tasks, including real-time updates and data manipulation.

Sophisticated UI: They often have advanced UI features and may use JavaScript frameworks.

Examples: Social media platforms, email services, and online productivity tools are typical web app examples.

Data Handling: Web apps involve data storage and user accounts, often relying on databases for content.


<!-- -------------------**\_\_\_**HTML Posssible Questions****\_****------------ -->

- HTML stands for Hyper Text Markup Language
- HTML is the standard markup language for creating Web pages
- HTML describes the structure of a Web page
- HTML consists of a series of elements
- HTML elements tell the browser how to display the content

The <!DOCTYPE html> declaration defines that this document is an HTML5 document & version.
The <html> element is the root element of an HTML page it defines the whole HTML document.
The <head> element contains meta information about the HTML page such as character set, viewport setting & page title
The <title> element specifies a title for the HTML page which is shown in the browsers title bar
or in the pages tab.
The <body> element defines the documents body, and is a container for all the visible contents, 
such as headings, paragraphs, images, hyperlinks, tables, lists, etc.

-- DOM
The Document Object Model, commonly referred to as the DOM, is a platform and language neutral programming interface for web documents. 
It represents the page so that programs can change the document structure, style, and content dynamically. In simpler terms, its a way for 
developers to interact with and manipulate web pages using code typically js.

-- Div VS Section VS Article VS Span: 
division : container for grouping elements together. 
section : it typically contains multiple paragraphs, headings, images, and other content.
article : should have a unique topic, be complete in itself.
span : tag is often used in combination with CSS to style text or apply special effects, such as changing the 
       font color or background color of a particular word or phrase

-- inline 
elements are elements that take up the do not occupy full width of their parent container that means does not start on 
a new line. eg: <span> tag

-- block elements
elements are elements that take up the full width of their parent container and create a new line 
after themselves that means always start on a new line and browser automatically add some space before and after the 
element. eg: <p>, <div> 

-- OVERFLOW
The overflow property can be set to one of the following values:
visible: This is the default value.It allows the content to overflow the elements box & any overflowing 
content will be visible outside of the box.

hidden: used to hide any content that exceeds the dimension of the element. No scroll bar will appear & that 
exceed content will be hidden. 

scroll: will always display the both horizontal & vertical scrollbar, whether the content overflow or not.
This ensure that the user can scroll to see any hidden content. 

auto: Auromatically display the scrollbar if the content exceed the dimension otherwise no scrollbar are shown 
its the combination of both hidden and scroll & providing the scrollbar only when needed.

-- META TAG:
In HTML, the meta tag is used to provide metadata about a web page. Metadata is information about 
the page that is not displayed on the page itself but is used by browsers, search engines, and other applications 
to understand and categorize the content of the page.
Some common attributes include:

charset: specifies the character encoding used by the page
name: specifies the type of metadata, such as "description", "keywords", or "author"
content: specifies the actual metadata value
-- eg
-- <head>
--   <meta charset="UTF-8">
--   <meta name="description" content="This is a description of the page.">
-- </head>

-- View port 
In HTML, the viewport meta tag is used to control the way a web page is displayed on mobile devices and in responsive web design. 
The viewport meta tag helps define the visible area of the web page and sets the initial zoom level.
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

-- MEDIA QUERY
Media queries allow you to specify different styles for different screen sizes, resolutions, orientations, 
and other device characteristics. Media queries are written using the @media 

-- Semantic tags
Semantic tags are used to represent the different parts of a web page in a meaningful way.

<header>: Represents the top section of a web page, typically containing the site logo, navigation, and other introductory elements.
<nav>: Defines a navigation menu for a web page.
<main>: Represents the primary content of a web page, excluding headers, footers, and sidebars.
<section>: Defines a thematic grouping of content within a web page.
<article>: Represents a self-contained composition within a document, such as a blog post or news article.
<aside>: Represents content that is tangentially related to the surrounding content, often placed in a sidebar.
<footer>: Represents the bottom section of a web page, typically containing copyright information, contact details, and other closing elements.

-- Non-Semantic Tags:
Non-semantic tags do not convey any specific meaning or structure to the content. They are typically used for layout and formatting purposes. 
Non-semantic tags are less informative and do not provide any context to the content they enclose. Examples of non-semantic tags include:

<div>: Used for creating generic divisions or containers for styling and layout.
<span>: Used for inline styling or to target specific portions of text.
<b>: Used for bold text (though <strong> is a semantic alternative for important text).
<i>: Used for italicized text (though <em> is a semantic alternative for emphasized text)

-- iframe 
The <iframe> tag in HTML stands for "inline frame" and is used to embed another web document or webpage within the current document. 
<iframe src="URL_of_external_page" width="width" height="height" frameborder="0" scrolling="auto"></iframe>

-- Formatting tags
HTML provides various tags and elements for formatting and styling the content of a web page. These formatting 
tags are often used to control the presentation of text and other elements on the page.
<b></b>, <i></i>, <u></u>, <font></font>, <br></br>, <center></center/>, <hr></hr>, <sub></sub>, <strike></strike> andso on.

-- Attribute
HTML attributes are always specified in the format attribute="value". Here are some common attributes and their purposes:

id: The id attribute provides a unique identifier for an HTML element within a document. It is used to target and style specific 
elements with CSS or to link to them with JavaScript
<div id="unique-element">This is a unique element.</div>

like that class, title, src, href, alt etc.

------------------ CSS:-------------

-- GRID
Grid is a two-dimensional layout system that allows you to create complex layouts with rows and
columns. Grid divides the container into 12 equal parts using CSS Grid. Well-suited for overall page layout, 
complex grid structures, and aligning items both horizontally and vertically.

-- FLEX
Flexbox is primarily used for one-dimensional layouts, such as arranging items in a row or column.
Useful for aligning items along a single axis.It is ideal for creating layouts that need to be flexible and responsive, 
such as navigation menus or flexible forms.

-- TRANSFORM
The transform property in CSS is used to apply a variety of visual transformations to elements, such as
 rotating, scaling, translating, or skewing them. 

-- pesudo class
A pseudo-class is used to define a special state of an element.

For example, it can be used to:

Style an element when a user mouses over it
Style visited and unvisited links differently
Style an element when it gets focus

-- Position
Position property is used to control the positioning of an elements within its container element

Static: This is the default value. Elements are positioned according to the noraml flow of the document.
Relative: Element is positioned relative to its normal position.
Absolute: Elements is removed from the normal flow & positioned is calculated by relative to its nearest positioned ancestor.
Fixed: Element is removed from the normal flow & its position is calculated by relative to the browser window. It stay fixed even when scrolling the pages.
Sticky: Element is treated as relative position untill it crosses a specified point during scrolling, then it is treated as fixed positioned.

-- Box Model:
The box model is a fundamental concept in web design and CSS (Cascading Style Sheets). 
It describes how elements on a web page are rendered and how their dimensions are calculated. 
The box model consists of four main components:

Content: This is the innermost part of an element and represents the actual content, such as text, images, or other media.

Padding: Padding is the space between the content and the elements border. It provides spacing and separation between the
content and the border. Padding can be adjusted using CSS properties like padding-top, padding-right, padding-bottom, and padding-left.

Border: The border is a line or outline that surrounds the content and padding. It creates a visual boundary for the 
element. Borders can have different styles, colors, and widths, which can be controlled with CSS properties like border-style, border-color, and border-width.

Margin: Margin is the space outside the elements border, providing separation between the element and neighboring 
elements. It controls the spacing between elements on a web page. Margins can be adjusted using CSS properties like margin-top, margin-right, margin-bottom, and margin-left.

Here a simple representation of the box model:

---------------------------
|       Margin            |
|   -------------------   |
|   |      Border      |  |
|   |    ------------  |  |
|   |   |  Padding  |  |  |
|   |   |           |  |  |
|   |   |  Content  |  |  |
|   |   |           |  |  |
|   |   |           |  |  |
|   |   -------------  |  |
|   -------------------   |
|       Margin            |
---------------------------

-- Font-Size
In CSS, font size can be specified using various units
 Absolte Unit : Absolute units specify a fixed size regardless of the context or device
px: A single pixel on the screen

Relative Units: These units are based on other properties, like the parent elements size or the screen size.

em: Relative to the font size of the element. For example, 2em is twice the font size of the parent.
rem: Relative to the font size of the root element (<html>). It helps maintain consistency across the page.
vw (viewport width): 1% of the viewport width. Handy for responsive designs.
vh (viewport height): 1% of the viewport height. Also useful for responsiveness.
%: Relative to the font size of the parent element.

Other Units:
ex: Equal to the height of a lowercase 'x' in the current font.
ch: Equal to the width of a '0' (zero) in the current font.


-- Select the element in Vanilla js
In vanilla JavaScript, you can select elements from the HTML document using various methods provided by the DOM
 (Document Object Model) API. Here are some commonly used methods:

1. getElementById();
2. getElementsByClassName()
3. getElementsByTagName()
4. querySelector()
5. querySelectorAll()

-- To create and remove elements in the DOM (Document Object Model) using JavaScript, you can use various methods 
-- provided by the DOM API. Here's how you can create and remove elements:

-- // Create a new element
const newElement = document.createElement('div');
newElement.textContent = 'New element added';
document.body.appendChild(newElement);

-- // remove the element
-- // Get the parent element containing the element you want to remove
const parentElement = document.getElementById('parentElementId');
-- // Get the element you want to remove
const elementToRemove = document.getElementById('elementToRemoveId');
-- // Remove the element from the DOM
parentElement.removeChild(elementToRemove);

-- (or)

-- // Get the element you want to remove
const elementToRemove = document.getElementById('elementToRemoveId');
elementToRemove.remove();

-- Errors
1. Syntax Error:
Syntax errors occur when the JavaScript engine encounters code that violates the language syntax rules.
These errors typically prevent the script from executing at all.
Example: Missing semicolon, unclosed brackets, etc.

2. Reference Error:
Reference errors occur when trying to access a variable or function that is not defined.
This can happen when referencing variables that have not been declared or when accessing properties or methods of undefined variables.
Example: console.log(foo); // ReferenceError: foo is not defined

3. Type Errors:
Type errors occur when trying to perform operation on a value of the wrong type.
This can happen when trying to perform incompatible operations.
Example: 'foo'.toUpperCase(5); // TypeError: 'foo'.toUpperCase is not a function

4. Range Errors:
It occur when trying to manipulate an object with some kind of length and providing an index that is out of range.
This can happen with array operations or string manipulation methods.
Example: let arr = [1, 2, 3]; arr[10]; // RangeError: Index out of range

5. Runtime Errors:
Runtime errors occur while a program is running and are typically caused by logic errors or unexpected conditions.
These errors may not always be caught by the JavaScript engine and can lead to unexpected behavior or crashes.
Example: Division by zero, accessing properties of null or undefined, etc.

6.Custom Errors:
Developers can also create custom error types using JavaScripts Error constructor function.
It can be useful for handling specific error conditions in applications and providing meaningful error messages to users.

-------------------Javascript:-----------------

-- Features: 
Case sensitive, Dynamically Typed, Cross-platforms, Interpreted, object orientated Scripting Language, Backward Capability

-- JavaScript:

Programming Language: JavaScript is a versatile programming language used for both front-end and back-end web development. 
Its supported by all modern web browsers and is a fundamental technology for web development.

Client-Side Scripting: JavaScript is primarily used for client-side scripting, which means it runs in the users web browser. 
It enables dynamic and interactive features on web pages, such as form validation, animations, and real-time updates.

Language Ecosystem: JavaScript has a vast ecosystem of libraries and frameworks that developers can leverage to simplify and 
speed up web development. Popular libraries and frameworks include jQuery, Angular, and Vue.js.

Back-End Development: With the introduction of technologies like Node.js, JavaScript can also be used for server-side development, 
allowing developers to build full-stack applications using a single language.


-- Scope:
JavaScript has 3 types of scope:
Global scope Variables declared Globally (outside any function) have Global Scope and accessed 
from anywhere in a JavaScript program. Function scope Variables defined inside a function are not
accessible (visible) from outside the function. Block scope Variables declared inside a { } 
block cannot be accessed from outside the block.

In JavaScript, let, var, and const are used for variable declarations, but they have some differences in terms of 
scope, hoisting, and mutability.

-- var:
var is a keyword in JavaScript used to declare function-scoped variables.
Variables declared with var can be hoisted to the top of their containing function or global scope.
var variables are hoisted to the top of their function or global scope. This means you can access them before 
they are declared, but they will have the value undefined.
You can reassign and redeclare var variables within the same scope.

var x = 10;
function foo() {
    console.log(x); // Prints 10
    var x = 20;
    console.log(x); // Prints 20
}


-- let:
let is a keyword in JavaScript used to declare block-scoped variables.They are accessible only within the block they 
are declared in (including if, for, while, etc.).
let variables are not hoisted to the top of the block scope.
Variables declared with let can be reassigned within their scope.

let x = 10;
if (true) {
    console.log(x); // Prints 10
let y = 20;    
console.log(y); // Prints 20
}

-- const:
const is a keyword in JavaScript used to declare block-scoped variables with constant values.
Variables declared with const cannot be redeclared or reassigned its once defined, but they can be mutable if they reference objects or arrays.

-- SET INTERVAL
setInterval is used when you want to execute a function repeatedly at a certain interval / duration, Same as setTimeout(),
but repeats the execution of the function continuously.

let count = 0;
const intervalId = setInterval(() => {
    console.log("Interval function executed.");
    count++;
    if (count >= 5) {
        clearInterval(intervalId); // Stop the interval after 5 executions
    }
}, 1000);

setInterval is commonly used in web development for tasks like:

1. Updating the UI periodically with new data.
2. Implementing countdown timers or clocks.
3. Polling for updates from a server.
4. Animating elements on a webpage.
5. Running code periodic in background.

-- SET TIMEOUT
setTimeout is used when you want to execute a function once after a certain delay, Executes a function after waiting a 
specified number of milliseconds.

console.log("Start");
setTimeout(() => {
    console.log("Delayed function executed after 2000 milliseconds.");
}, 2000);
console.log("End");

setTimeout is commonly used in web development for tasks like:

1. Delayed animations and transitions.
2. Implementing debounce or throttle functionality.
3. Making asynchronous API calls with a delay.

-- What is a Promise in JavaScript?
A Promise is an object that represents the eventual completion (or failure) of an asynchronous 
operation and its resulting value.It provides a way to handle asynchronous operation more easily to avoiding callback hell
or prymaid of doom.

-- What are the three states of a Promise?
The three states of a Promise are pending, fulfilled, and rejected.

-- Pending: 
This is the initial state of a Promise. When you create a Promise, it starts in a pending state. At this point, the asynchronous operation is 
still ongoing, and the Promise is neither fulfilled nor rejected.

-- Fulfilled (Resolved): 
A Promise is said to be fulfilled when the asynchronous operation it represents has successfully completed. 
When a Promise is fulfilled, it transitions to this state, and the then methods success callback is invoked.

-- Rejected: 
A Promise is said to be rejected when the asynchronous operation it represents encounters an error or fails for some reason. 
When a Promise is rejected, it transitions to this state, and the catch or then methods error callback is invoked.

-- What are the two main methods used to handle Promises?
The two main methods used to handle Promises are then() and catch().

-- How do you create a new Promise in JavaScript?
You can create a new Promise in JavaScript by using the Promise constructor and 
passing in a function that takes two parameters: resolve and reject. 
The resolve function is called when the operation is successful and 
the reject function is called when there is an error.

-- What is the difference between a Promise and a callback function?
A Promise is an object that represents the eventual completion of an asynchronous operation, 
while a callback function is a function that is called when an asynchronous operation is complete.

-- How do you chain multiple promises together? OR PROMISE CHAINING
You can chain multiple promises together by using the then() method to return a new promise. 
Each then() method takes a callback function that returns a new value or a new promise.

-- What is Promise.all() and when would you use it?
Promise.all() is a method that takes an array of promises as input and returns a new promise that
is fulfilled when all of the promises in the input array are fulfilled. You would use 
Promise.all() when you need to execute multiple asynchronous operations in parallel and wait for
all of them to complete before moving on to the next step.

-- What is Promise.race() and when would you use it?
Promise.race() is a method that takes an array of promises as input and returns a new promise that is 
fulfilled or rejected as soon as the first promise in the input array is fulfilled or rejected. 
You would use Promise.race() when you need to execute multiple asynchronous operations in parallel and 
only need the result of the first operation that completes.

-- What is the purpose of the finally() method in a Promise?
The finally() method in a Promise is used to specify a callback function that is executed regardless of 
whether the promise is fulfilled or rejected. The finally() method is typically used to perform cleanup 
operations, such as closing a database connection or releasing a resource, after the promise has completed.

-- How do you handle errors in Promises?
You can handle errors in Promises by using the catch() method to specify a callback function
that is executed if the Promise is rejected. The catch() method takes a single parameter, 
which is the error object or message that was returned by the Promise

-- Hoisting
Hoisting is a behavior in JavaScript where variable and function declarations are moved to the top of their containing 
scope during the compilation phase, before the code is executed. This means that you can use variables and functions 
before they are declared in your code, However, only the declarations are hoisted, not the initializations. 
This means that the variable is technically available from the beginning of the scope, but its value will be undefined 
until the point in the code where its actually assigned a value.

console.log(x); // Output: undefined
var x = 5;

Function declarations (not function expressions) are also hoisted to the top of their containing scope. This means you can call a 
function before its defined in the code.


sayHello(); // Output: "Hello!"
function sayHello() {
    console.log("Hello!");
}

-- Temporary Deadzone
Its important to note that this behavior applies to var declarations and function declarations but not to let and const declarations. 
Variables declared with let and const are hoisted to the top of their containing block but 
arent initialized until their actual declaration in the code. This is known as the "temporal dead zone."
(or)
TDZ stands for Temporal Dead Zone in JavaScript. Its a phase that occurs when using the let and const variable declarations. 
During the Temporal Dead Zone, a variable is technically declared but cannot be accessed or used. Accessing the variable in this state will 
result in a ReferenceError. The variable becomes accessible only after it has been officially declared in the code.

-- Async/Await:
Async/await provides a more synchronous-looking syntax for handling asynchronous operations. The async keyword is used to declare a 
function as asynchronous, and The await keyword can only be used inside async functions and the await keyword is used 
to pause execution until a promise is get it settled either resolved or reject.
If the promise is fulfilled, await returns the resolved value. If the promise is rejected, await throws the rejection error, 
which can be caught using a try...catch block.

function delay(ms) {
    return new Promise(resolve => {
        setTimeout(resolve, ms);
    });
}

async function executes() {
    console.log('Start');
    
    try {
        await delay(2000); // Pause for 2 seconds
        console.log('After 2 seconds');
        
        await delay(1000); // Pause for another second
        console.log('After 3 seconds');
    } catch (error) {
        console.error('Error:', error);
    }
    
    console.log('End');
}
executes();


-- Destructuring
Destructuring in JavaScript is a way to extract values from objects and arrays and assign them to variables more conveniently, 
making code cleaner and more readable.Its particularly useful when working with complex data structures and is widely used in 
JavaScript for tasks like data extraction, parameter passing, and variable assignment.

-- local storage
Local Storage allows you to store larger amounts of data (usually up to around 5-10 MB) in a 
key-value format. The data stored in Local Storage persists even after the browser is closed and 
can be accessed across browser sessions. This makes it suitable for storing things like 
user preferences, settings, and cached data. The data stored in Local Storage does not have 
an expiration time and remains until its explicitly cleared by the user or the application.

-- session storage
Session Storage also allows you to store key-value pairs, but the data is limited to the 
duration of the browser session. This means that the data is available only as long as
the browser tab or window is open. Once the user closes the tab or window, the session 
storage data is cleared automatically. This makes it suitable for storing temporary data
that is only needed during a single browsing session.

-- What is the Strict mode in JavaScript?
Strict mode in JavaScript introduces more stringent error-checking in a JavaScript code.

While in Strict mode all variables have to be declared explicitly,values cannot be assigned to a read-only property,etc.
We can enable strict mode by adding use strict at the beginning of a JavaScript code or within a certain segment of code.

-- What will “typeof NaN return and why?
The typeof NaN will return number. This is tricky and somewhat counterintuitive, because NaN stands for “Not a number”. 
However, in Javascript, NaN is considered a special number and therefore its type is number.

-- Can you explain closures with an example?
A closure in JavaScript is a function bundled together with its lexical environment.It allows a function to access and 
manipulate variables from its outer scope, even when that outer scope is no longer active. 
A closure is a function that has access to its own scope, the scope of the outer function and the global scope. 

function outer() {
  let outerVar = "I am from outer function!";
  
  function inner() {
    let innerVar = "I am from inner function!";
    console.log(outerVar);  // I can access outerVar!
    console.log(innerVar);  // I can access innerVar!
  }
  
  return inner;
}

const myClosure = outer();
myClosure();  // Outputs: "I am from outer function!" and "I am from inner function!"
Here, inner() is a closure that encompasses its own scope, the scope of outer() and the global scope.

-- why JavaScript is single threaded
JavaScript is a single-threaded language, which means it has a single execution thread for handling tasks. 
This design is especially suitable for web browsers, where responsiveness is crucial.
The event-driven, non-blocking nature of JavaScript allows it to handle asynchronous operations efficiently, 
preventing the main thread from getting blocked.

-- Dynamic Typing:
JavaScript is dynamically typed, which means that the data type of a variable is determined at runtime. 
You can assign different types of values to the same variable without explicitly declaring its type.

let myVariable = 10; // Number
myVariable = "Hello"; // String
myVariable = true; // Boolean

--Weakly Typed:
JavaScript is considered weakly typed because it performs implicit type coercion, meaning it automatically 
converts values between different types during operations. This can sometimes lead to unexpected behavior if 
not handled carefully.

let result = "5" + 3; // Result is "53"

-- Function Declaration
In a function declaration, you define a function using the function keyword followed by the function name and parameters.
Function declarations are hoisted, and moved to the top of the container function scope during compilation phase, before
the code is executed, which means we can call the function before they declare in the code.

function greet(name){
  console.log(`Welcome!, ${name}`)
}
greet("hlo")

-- Function Expression
In a function expression, you assign a function to a variable. The function can be named (named function expression) 
or anonymous (anonymous function expression).
Function expressions are not hoisted. They are treated like any other variable assignment and are not accessible 
before the line where they are defined.
They are typically used when you need to pass a function as an argument to another function.

-- Named function expression
const greet = function greet(name){
  console.log(`Welcome!, ${name}`)
}
greet("hi")

-- Ananumous function expression
const greet = function(name){
  console.log(`Welcome!, ${name}`)
}
greet("hi")

-- Concept of the Pure Function 
The concept of a pure function is a fundamental concept in functional programming and has several benefits:

function add(a,b){
return a+b
}
console.log(add(5,3))
console.log(add(10,2))

1. It always returns the same result for the same inputs (3 + 5 always equals 8).
2. It does not modify any external state or variables.
3. It does not produce any side effects.
4. They are easier to understand bcoz they only depend on their inputs and have no hidden dependencies.
5. They are easier to test because they produce predictable results and do not require complex setup or mocking.

-- Function Currying
Currying is a functional programming technique is the process of breaking down a function that takes multiple arguments 
into a series of functions, each one taking one argument. This allows for partial application and function composition, 
enhancing code reusability and flexibility in functional programming.

function curryAdd(x) {
    return function(y) {
        return x + y;
    };
}

const add2 = curryAdd(2); // Create a new function that adds 2 to its argument
console.log(add2(3)); // Output: 5 (2 + 3)


function mul(a){
  return function (b){
    return function (c){
      return a+b+c
    }
  }
}
console.log(mul(1)(2)(3))

-- Function Invokation
Function invocation in JavaScript refers to the process of executing the code contained within a function. 
we define a code inside the function that code inside a function is not executed, it is executed only when 
the function is explicitly called or invoked.

-- In simpler terms:
Function invocation is when you run the code inside a function by calling or invoking the function.

-- // Define a function
function greet(name) {
    console.log("Hello, " + name + "!");
}

-- // The code inside the function is not executed yet

// Invoke or call the function
greet("Alice");
-- // Output: Hello, Alice!

-- // The code inside the function is executed when the function is invoked


-- Undefined:

undefined is a primitive value that represents the absence of a value or an uninitialized variable.
It is automatically assigned to variables that have been declared but not yet initialized or a value not get assigned.
It is also the default return value for functions that do not explicitly return anything.

let x; // Variable declared but not initialized, so its undefined
console.log(x); // Outputs: undefined

function foo() {}
console.log(foo()); // Outputs: undefined (because foo() does not return anything)

-- Null

typeof null returning object, null itself is not an object.
It is a primitive value that represents the intentional absence of any object value.
Unlike undefined, null is a value that must be explicitly assigned to a variable.
Its often used to indicate that a variable or property intentionally has no value usually set by programmer like us.

let y = null; // Variable explicitly assigned null
console.log(y); // Outputs: null

-- === (Strict Equality):

The === operator, it evaluates to true only if the operands are of the same type and have the same value.
It does not perform type coercion when comparing values.

console.log(5 === 5); // true
console.log(5 === '5'); // false (because one is a number and the other is a string)

-- == (Loose Equality):

The == operator, it evaluates to true if the operands are equal in value after type coercion if needed.
It performs type coercion when comparing values of different types,it automatically to convert one type to another 
to make the comparison.

console.log(5 == 5); // true
console.log(5 == '5'); // true (because the string '5' is coerced to a number)


-- How to check the type of the variable
In JavaScript, you can check the type of a variable using the typeof operator or the instanceof operator. 

-- 1. Using typeof:
The typeof operator returns a string indicating the type of the operand. Its generally used to check primitive types 
and some built-in objects.

let x = 5;
console.log(typeof x); // Output: "number"

let y = 'hello';
console.log(typeof y); // Output: "string"

let z = true;
console.log(typeof z); // Output: "boolean"

let obj = {};
console.log(typeof obj); // Output: "object"

let arr = [];
console.log(typeof arr); // Output: "object" (Note: Arrays are objects in JavaScript)

-- 2. Using instanceof:
The instanceof operator checks whether an object belongs to a specific class or constructor function. 
Its commonly used to check the type of custom objects and instances of built-in objects.

function Person(name) {
    this.name = name;
}

let person = new Person('John');
console.log(person instanceof Person); // Output: true

let arr = [1, 2, 3];
console.log(arr instanceof Array); // Output: true

let obj = {};
console.log(obj instanceof Object); // Output: true

-- innerHTML
InnerHTML is a property of DOM elements that represents the HTML content within an element.
It can be used to both retrieve and set the HTML content of an element.
When you set innerHTML, youre effectively replacing the existing HTML content of the element with the new HTML 
content you provide.
Be cautious when using innerHTML with user-generated or untrusted content, as it can lead to security vulnerabilities,
if not properly sanitized.


const element = document.getElementById('myElement');
const htmlContent = element.innerHTML;
// Set new HTML content to the element
element.innerHTML = '<p>New HTML content</p>';

-- textContent
textContent is a property of DOM elements that represents the text content within an element.
It only deals with text content and does not interpret any HTML tags as markup.
When you set textContent, it replaces all existing content within the element with the specified text, 
including any child elements.
It is safer to use textContent when you only want to manipulate text content, as it automatically escapes any HTML 
characters, preventing HTML from vulnerabilities.

const element = document.getElementById('myElement');
const textContent = element.textContent;
// Set new text content to the element
element.textContent = 'New text content';

-- Callaback Function 
Callbacks are functions passed as arguments to other functions, to be executed once an asynchronous operation completes.
Callback functions are commonly used in JavaScript to handle asynchronous tasks, such as making API requests, 
reading files, executing animations and waiting for user input.

function fetchData(callback) {
  // Simulating an asynchronous operation (e.g., fetching data from a server)
  setTimeout(() => {
    const data = "This is the fetched data";
    // Call the callback function with the fetched data
    callback(data);
  }, 2000); // Simulating a delay of 2 seconds
}

// Define a callback function to handle the fetched data
function handleData(data) {
  console.log("Data received:", data);
}

// Call the fetchData function and pass the handleData function as a callback
fetchData(handleData);


-- Callback Hell / Pyramid of doom
Callback hell, also known as the "pyramid of doom," It is a situation in asynchronous programming where code becomes 
difficult to read and maintain due to nested callback functions. This typically occurs when dealing with multiple 
asynchronous operations that depend on each other or need to be executed sequentially.

asyncFunction1(param1, function(err, result1) {
  if (err) {
    handleError(err);
  } else {
    asyncFunction2(result1, function(err, result2) {
      if (err) {
        handleError(err);
      } else {
        asyncFunction3(result2, function(err, result3) {
          if (err) {
            handleError(err);
          } else {
            <p>Callback Hell</p>
          }
        });
      }
    });
  }
});

-- Spread operator
It spreads the elements of an iterable (array, string, etc.) into individual elements.
Commonly used for array manipulation, object manipulation, and function calls.

It used to expand elements of an iterable (like an array or string) into places where multiple elements are expected. 

const arr1 = [1, 2, 3];
const arr2 = [4, 5, 6];
const combinedArray = [...arr1, ...arr2]; // Combines elements of arr1 and arr2 into a new array
console.log(combinedArray); // Output: [1, 2, 3, 4, 5, 6]

-- Rest Parameter
It collects all remaining arguments into a single array parameter.
Commonly used when you want to create functions that can accept a variable number of arguments.

It used to represent an indefinite number of arguments as an array in function definitions.

function myFunction(...args) {
    console.log(args);
}

myFunction(1, 2, 3, 4, 5); // Output: [1, 2, 3, 4, 5]


-- This keyword
This is a keyword refers to objects,that is currently execting the  function.

In an object method, this refers to the object on which the method is called.
When used alone in a function or non-strict mode, this refers to the global object 
(window in browsers, global in Node.js).

In a function, this refers to the global object.
In a function, in strict mode, this is undefined.
In an event, this refers to the element that received the event.
Methods like call(), apply(), and bind() can refer this to any object.
Note
this is not a variable. It is a keyword. You cannot change the value of this.


-- diff B/w normal and arrow function 

1. syntax
function normalFun(){
  //write code here
  }
const arrowFun = ()=>{
  //writr code here
}

2. This keyword
In normal function the value this depends on the function where it is getting called
In arrow function doesnt have theirown this, binded it its closest non arrow function
3. New keyword
Regular function are constructable and callable
Arrow function are only callable not constructable

----------------------REACT-------------------

-- import React from 'react'; 
It is a standard import statement used in React components to import the React library, 
which is necessary for creating and defining React components using JSX syntax, it gets transformed into calls to
React.createElement(). Its a fundamental part of React development.

-- export:
Used to export one or more values from a module.
You can have multiple named exports from a module.
When importing, you need to use the exact name specified during export.

-- export default:
Used to export a single value or object as the default export for a module.
You can have only one default export per module.
When importing, you can use any name for the default import.

-- import { PrimaryButton } from './Button';
When you have a module that exports multiple values or functions, you can use curly braces to specify exactly 
which exports you want to import.

-- React:

JavaScript Library: React is a JavaScript library developed by Facebook for building user interfaces (UIs). 
It is specifically focused on creating interactive and reusable UI components.

Component-Based: React promotes a component-based architecture, where the UI is divided into small, 
self-contained components. Each component has its own state and behavior, making it easier to manage complex UIs.

Virtual DOM: React uses a virtual DOM (Document Object Model) to efficiently update the actual DOM. 
Instead of directly modifying the DOM, React calculates the most efficient way to update it, improving performance.

One-Way Data Binding: React enforces a one-way data flow, which means data flows from parent components to child components. 
This helps maintain predictability and reduces bugs in large applications.

Popular in Front-End Development: React is widely used for front-end web development and is often combined with other tools and libraries, 
such as Redux for state management and React Router for routing.

-- Advantages of React
The key features of React include its use of a virtual DOM, its component-based architecture, its ability 
to handle state management, its support for server-side rendering, and its modular and reusable code.

-- Disadvantages of React
Its a steep learning curve for beginners and that need for additional library and tools to complete a full featured web application.

-- What is React and what problem does it solve?
React is a JavaScript library for building user interfaces. It allows developers to create complex UIs 
using a component-based approach. The main problem React solves is the need for efficient rendering of 
dynamic content, such as user input, without having to reload the entire page.

-- How does React use the virtual DOM to improve performance?
React uses a virtual representation of the actual DOM called the virtual DOM. When changes are made to
the UI, React updates the virtual DOM, compares it with the previous version, and only updates the actual
DOM where necessary. This minimizes the number of expensive DOM operations, resulting in improved performance.

-- How does the virtual Dom look like
The virtual DOM is a programming concept that is used in React to improve the performance of web applications. 
It is a lightweight representation of the actual DOM maintained by JavaScript frameworks like React.js. 
While the actual DOM is a tree-like structure of HTML elements that represents the structure of a web page, 
the Virtual DOM is essentially a JavaScript object that mirrors this structure.

{
  type: 'div',
  props: {
    id: 'container',
    className: 'main-container',
    children: [
      {
        type: 'h1',
        props: {
          children: 'Hello, World!'
        }
      },
      {
        type: 'p',
        props: {
          children: 'This is a paragraph.'
        }
      }
    ]
  }
}


-- How does the component-based architecture in React work?
In React, a component is a self-contained block of code that manages its own state and can be composed with 
other components to create complex UIs. Components can be either functional or class-based, and can be 
nested within one another.

-- What is JSX and how does it work with React?
JSX is a syntax extension for JavaScript that allows developers to write HTML-like syntax within JavaScript 
code. It works with React by enabling developers to write declarative code for creating and manipulating 
components (or) it is commonly used in react to describe the structure and content of a components UI.

-- How do you handle state management in React?
State is managed in React using the state object, which can be updated using the setState() method. 
State should be used for data that changes frequently and needs to be managed by the component itself.

-- What is the React Router and how does it work?
React Router is a library that allows you to handle client-side routing in React applications. It provides a way to 
navigate between different pages or views in a single-page application (SPA) without causing a full page refresh.
It allows developers to define routes, which are mapped to specific components, 
and to handle navigation between those routes using various methods, such as links or programmatic navigation.

-- How do you test React components?
React components can be tested using various tools, such as Jest or Enzyme. Tests can be written to 
ensure that components render correctly, that they handle user input correctly, and that they update state 
correctly.

-- How do you optimize performance in React?
Performance in React can be optimized by using the shouldComponentUpdate() method to minimize unnecessary 
re-renders, by using pure components, by using React.memo(), and by using code splitting to reduce the 
size of the JavaScript bundle.
Bundle and Code Splitting:
Use tools like Webpack to bundle your code.
Implement code splitting to load only necessary code for the current view.
Dynamically import components when needed.

Lazy Loading:
Lazy load images, especially those not immediately visible to the user.
Use the React.lazy function for lazy loading components.

Minification and Compression:
Minify your JavaScript, CSS, and HTML files to reduce file sizes.
Enable gzip or Brotli compression on your server to reduce network transfer times.

Tree Shaking:
Use tools like Webpack to remove unused code during the bundling process (tree shaking).
Ensure that your bundler is configured for production to eliminate dead code.

Optimize Images:
Compress and optimize images.
Use responsive images and implement the srcset attribute.

Memoization:
Use React.memo for functional components to prevent unnecessary re-renders.
Memoize expensive computations using useMemo hook.

Server-Side Rendering (SSR):
Implement SSR to render initial HTML on the server, improving initial load times and SEO.
Consider tools like Next.js for built-in SSR.

CDN (Content Delivery Network):
Use a CDN to cache and deliver static assets closer to users, reducing latency.

Optimize API Requests:
Minimize the number of API requests.
Implement server-side caching and use efficient database queries.
Service Workers and Progressive Web App (PWA):

Use service workers to cache assets and enable offline functionality.
Implement a PWA for a more app-like experience.

Performance Monitoring:
Use tools like Lighthouse, Web Vitals, or browser developer tools to identify performance bottlenecks.
Monitor and analyze application performance over time.

Reduce Third-Party Dependencies:
Evaluate and minimize the use of unnecessary third-party libraries.
Choose lightweight alternatives when available.

Component Performance:
Optimize rendering of components, especially those that update frequently.
Use the React DevTools Profiler to identify performance issues.
Bundle Analysis:

Use tools like Webpack Bundle Analyzer to analyze your bundle size and identify areas for improvement

-- Can you explain the concept of "lifting state up" in React?
Lifting state up is the process of moving state from a child component to its parent component in order 
to share it with other child components. This can be useful for managing state that is used by multiple 
components, or for passing data between sibling components.

-- What is the difference between controlled and uncontrolled components in React?
Controlled components are components that have their state managed by the parent component, while 
uncontrolled components have their state managed by the DOM. Controlled components can provide more 
control over the behavior of the component, while uncontrolled components can be simpler to implement

-- What is the difference between Props and State in React?
Props (short for properties) and State are both used to pass data to components in React, but they serve 
different purposes.

Props are read-only data that are passed from parent components to child components. They are immutable, 
meaning they cannot be modified within the component that receives them. This makes them useful for 
configuring components and passing data down the component tree.

State, on the other hand, is used to manage data that changes within a component. It is mutable, meaning it 
can be updated within the component that owns it. This makes it useful for keeping track of things like user 
input or the state of a toggle button.

-- What is a Higher-Order Component (HOC)?
A Higher-Order Component (HOC) is a function that takes a component as an argument and returns a new 
component with additional functionality. HOCs are most popular & modern pattern in React for code reuse and 
abstraction in simply we can say they allow us to reuse component logic across the multiple components.

HOCs can be used to:

Inject additional props into a component
Wrap a component with additional markup or behavior
Provide context to a component
& used in tasks like code spliting, authentication & state management.

-- What is Redux?
Redux is a state management library for JavaScript applications. It provides a centralized store for managing 
the state of your application, which allows you to manage your applications state in a predictable and scalable way,
and it provides a way to update and access that state,which can be accessed by all components in the application.

Redux uses a pattern called "unidirectional data flow" to manage state. This means that state changes 
must be triggered by actions

By using Redux, It also provides a way to share state between components without having to 
pass props down the component tree.
Redux works by using a combination of actions, reducers, and a store. Actions are plain JavaScript objects that describe changes to 
the application state, reducers are pure functions that take the current state and an action and return a new state, and 
the store is the object that holds the application state and provides methods for accessing and updating it.

-- What is React ContextAPI?
ContextAPI is a feature in React that allows you to pass data down the component tree without having to 
pass props through each level of the tree. It provides a way to share data between components that are 
not directly connected.

Context consists of two parts: a Provider and a Consumer. The Provider component allows you to specify the 
data that you want to share, and the Consumer component allows you to access that data from any level in 
the component tree.

-- What is the difference between React and React Native?
React application are built for the web,while React Native applications are built for iOS and Android devices.

React is a JavaScript library for building web applications, while React Native is a framework for building 
native mobile applications using JavaScript and React.

React and React Native share many similarities, such as the component-based architecture and the use of 
JSX syntax. However, there are some key differences between the two:

React applications use HTML, CSS, and JavaScript to render the UI, while React Native uses native UI components.
React Native provides a set of pre-built components specifically designed for mobile devices, such as <ScrollView> and <TextInput>.
While React and React Native have some similarities, they are designed for different use cases and require different tools and development 
workflows.

-- What are React hooks?
React hooks are functions that allow you to use React features, such as state and lifecycle methods, 
in functional components. They were introduced in React 16.8 as a way to simplify the process of using 
stateful logic in functional components.

Some of the most commonly used React hooks include useState, which allows you to add state to a functional 
component, useEffect, which allows you to perform side effects such as data fetching or DOM manipulation, 
and useContext, which allows you to access context in a functional component.

React hooks are typically used in functional components, which are simpler and easier to read and maintain 
than class components. They allow you to use state and other React features without having to convert your 
functional components into class components.


-- What is the virtual DOM in React?
The virtual DOM is a programming concept that is used in React to improve the performance of web applications. 
It is a lightweight representation of the actual DOM (Document Object Model), which is the data structure that represents 
the content and structure of a web page in the browser.

The virtual DOM is a representation of the actual DOM (Document Object Model) in memory. 

When you update the state of a component in React, the virtual DOM is updated to reflect the changes, 
but the actual DOM is not updated immediately. Instead, React compares the previous virtual DOM with 
the updated virtual DOM to determine what changes need to be made to the actual DOM. 
This process is called reconciliation, and it is what allows React to update the UI in an efficient and 
performant way.

By using the virtual DOM, React minimizes the number of updates that need to be made to the actual DOM, 
which can be slow and resource-intensive. This makes React applications faster and more responsive, 
especially when dealing with large amounts of data.


-- What is a React hook?
React hooks are functions that allow you to use React features, such as state and lifecycle methods, 
in functional components.Previously, state could only be managed in class components using the setState() method.

Hooks are functions that allow you to use state and other React features in functional components. 
Some of the most commonly used hooks include:

**useState: This hook allows you to manage state in a functional component.

**useEffect: This hook allows you to run side effects, such as fetching data from an API, when a component is mounted, updated, or unmounted.

**useContext: This hook allows you to access context in a functional component.

Hooks provide a number of benefits over class components, including improved code readability, better performance, and easier testing. 
They also allow you to write more reusable and composable code, which can help to improve the maintainability of your application.

-- useRef
The useRef Hook allows you to persist values between renders.

It can be used to store a mutable value that does not cause any re-render when its gets updated.

It can be used to access a DOM element directly.

It is a way to access the DOM nodes or React elements created in the render method.

Refs can be used to call methods or access properties of a component instance or a DOM node.

-- useState
useState is a built-in hook in React.

useState takes one argument, which is the initial value of the state variable.

useState returns an array with two values: the current value of the state variable, and 
a function to update the value.

The state variable can be of any data type, such as a string, number, boolean, object, or array.

Updating the state variable using the update function triggers a re-render of the component, causing any 
changes in the UI to reflect the updated state.

-- useEffect
The useEffect Hook allows you to perform side effects in your components.

Some examples of side effects are: fetching data from API, directly updating the DOM, and timers.

useEffect accepts two arguments. The second argument is optional.

The function passed to useEffect can return a cleanup function, which is used to cancel.

-- useReducer
The useReducer Hook is similar to the useState Hook.

By default we use useState,  when the state logic becomes more complex switch to useReducer 

The useReducer Hook returns the current state and a dispatch method.


-- useCallBack
One reason to use useCallback is to prevent a component from re-rendering unless its props have changed.

-- React JSX
JSX(JavaScript XML)is syntax extension of JS that allows you to write HTML-like code in React components.

Note that JSX elements must be wrapped in parentheses when used in a function, and attribute names must be
in camelCase instead of kebab-case, as in regular HTML. Also, JSX expressions can contain JavaScript 
expressions in curly braces, which are evaluated at runtime.

-- usage of keys
React, keys are used to identify unique items in a list of elements that are being rendered dynamically. 
When rendering a list of elements in React,key wants to include for each element to track the elements changes
or we miss to give key for the elements it takes the ID as a key by default

-- component life cycle
Mounting - This phase occurs when a component is created and added to the DOM for the first time. 
Updating - This phase occurs when the state or props of a component change, triggering a re-render
Unmounting - This phase occurs when a component is removed from the DOM.
 
-- Functional Components or Stateless
functional component in react are the simply JavaScript function that return a react element, they do not have state or 
lifecycle methods and are used for simple, stateless components, For simple UI rendering, stateless components are
preferred as they are easier to understand and maintain.

-- Class components or Statefull
Class component in react have the access to state and lifecycle method and are used for more complex, stateful components.
For complex UI interactions and logic, stateful components are preferred as they can handle the logic and data management 
in a centralized and organized way.

-- props drilling
Props drilling is a term used in React when you have a component that needs to pass data to its 
child component, but that child component is not directly related to the parent component inorder to share the data
to pass the same props down through several levels of components, even if some of those components 
dont use the props themselves. This is called props drilling.

-- Brouser router
It is a type of router that uses to keep track of the URLs and renders the appropriate component based 
on the current URL.

-- switch
It is a component that allows grouping Route components and rendering only the first one that matches the 
current URL. This is useful when defining routes that have similar paths but different components to render.

-- Link: 
It is a component that allows creating links to other pages in the application. 


--------------------MYSQL-----------------

-- What is the difference between SQL and MySQL?
SQL is a language used for managing and querying relational databases data,while MySQL is one of the RDBMS software that uses SQL as its language.

-- What is MySQL?
MySQL is a versatile open-source relational database management system (RDBMS). It stores data in tables. Every table is made up of rows and 
columns that uses Structured Query Language (SQL) to manage and access data in a database.

-- What is a primary key in MySQL?
A primary key is a column or a set of columns that uniquely identifies each row in a table. 
It ensures that the data is unique and helps in faster querying.

-- what is a foreign key in mysql?
A foreign key is a column or a set of columns in a relational database table that refers to the primary key 
or a unique key of another table. It is a link between two tables.This helps to maintain 
consistency and accuracy of data in the database.

-- What is normalization in MySQL?
Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity. 
It the process of dividing larger tables into smaller tables and defining relationships between them.

-- What is a stored procedure in MySQL?
A stored procedure is a pre-written SQL code that is stored in the database and can be executed repeatedly. 
It is used to encapsulate and execute complex logic, reduce network traffic, and enhance performance.

-- What is the difference between a join and a subquery in MySQL?
A join combines two or more tables based on a common column, while a subquery is a query nested within another query. 
Joins are used to combine data from multiple tables, while subqueries are used to retrieve data from one or more tables and use 
it to filter data in another query.

-- What is the difference between MyISAM and InnoDB storage engines in MySQL?
MyISAM is an older storage engine in MySQL that is suitable for read-heavy applications and supports full-text searching. 
InnoDB is a more recent storage engine that is designed for transactional applications and supports features such as row-level 
locking and foreign keys.

-- How can you optimize MySQL performance?
There are several ways to optimize MySQL performance, such as using indexes to speed up queries, avoiding subqueries and joins, 
optimizing database schema design, caching frequently accessed data, and using a caching layer such as Memcached or Redis.

------------------MONGODB---------

-- What is MongoDB?
MongoDB is a NoSQL document-oriented database that stores data in flexible, JSON-like documents. 
It is a popular choice for building web applications because of its flexible data model and scalability.

-- What is a document in MongoDB?
In MongoDB, a document is a basic unit of data storage. It is a JSON-like data structure that contains 
key-value pairs. Documents are stored in collections and can have varying structures and fields which it means Each document can have a 
different structure,these different structure making it flexible for handling various types of data.

-- What is a collection in MongoDB?
A collection in MongoDB is a group of related documents that are stored together. It is similar to a 
table in a relational database. Collections do not enforce a schema and can have varying structures and fields.For example, 
you might have a database for an e-commerce application with collections for products, orders, and customers.

-- What is a database in MongoDB?
A database in MongoDB is a container for collections and which means this is the top-level container for your data. 
It is similar to a database in a relational database system. Each database can have multiple collections and can be 
hosted on a single MongoDB server or on multiple servers.

-- What is sharding in MongoDB?
Sharding in MongoDB is a process of horizontal scaling in which data is distributed across multiple servers 
or shards. It allows for improve performance and scalability of a database system.

-- What is indexing in MongoDB?
Indexing in MongoDB is a way of optimizing queries by creating a data structure that allows for faster 
data retrieval. Indexes can be created on single or multiple fields in a collection and can significantly 
improve query performance.

-- What is replication in MongoDB?
Replication in MongoDB is a process of creating copies of data across multiple servers or nodes in a cluster. 
It provides high availability and data redundancy in case of node failures.

-- What is aggregation in MongoDB?
Aggregation in MongoDB is a way of processing data and returning results in a structured format. 
It allows for complex data analysis and can be used for tasks such as data mining, statistical analysis, 
and reporting.

-- What are the data types in MongoDB?
MongoDB supports a variety of data types, including strings, integers, doubles, booleans, dates, regular 
expressions, arrays, and documents.

-- What is the difference between MongoDB and SQL databases?
MongoDB is a NoSQL document-oriented database, while SQL databases are relational databases that store 
data in tables. MongoDB does not enforce a schema and allows for more flexible data modeling, while SQL
databases require a fixed schema. MongoDB is designed for scalability and can handle large amounts of 
unstructured data, while SQL databases are better suited for structured data and complex queries


----------------NODEJS------------


-- What is Node.js and how does it work?
Node.js is an open-source, cross-platform JavaScript runtime environment built on Chromes V8 engine. It allows 
developers to run JavaScript on the server-side, enabling them to create scalable and high-performance web applications. 
Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient.

-- What is an event loop in Node.js?
The event loop is a core component of Node.js that handles all the asynchronous and I/O operations. It listens for events and 
executes the appropriate callback function when an event occurs. The event loop is responsible for managing the flow of execution 
and ensuring that the program runs efficiently.

-- What is the purpose of Node Package Manager (npm)?
Node Package Manager (npm) is a package manager for Node.js that allows developers to easily manage and share packages of code. 
It provides a central repository for Node.js packages and makes it easy to install and update packages as needed. npm is also used to
manage project dependencies and to create, publish, and share Node.js packages.

-- What are the benefits of using Node.js?
Some of the benefits of using Node.js include:

It is built on JavaScript, which is a widely-used language that many developers are familiar with.
It uses an event-driven, non-blocking I/O model that makes it highly scalable and efficient.
It has a large and active community that contributes to the development of packages and libraries.
It can be used for both front-end and back-end development, making it a versatile technology.
It is open-source and free to use, which makes it accessible to developers of all levels.

-- What are callbacks in Node.js?
In Node.js, callbacks are functions that are passed as arguments to other functions and are executed when 
the original function has completed its task. They are commonly used to handle asynchronous operations, such as 
reading from a file or making a database query. Callbacks allow Node.js to perform non-blocking I/O operations, 
which makes it highly efficient and scalable.

-- What is the purpose of the module.exports object in Node.js?
The module.exports object in Node.js is used to define the public API for a module. It allows developers to specify which functions, objects, or variables should be made available to other modules that require it. By default, Node.js modules are encapsulated, meaning that their internal functions and variables are not accessible to other modules unless they are explicitly exported using module.exports.

-- What is middleware in Node.js?
Middleware in Node.js refers to a series of functions that are executed in the request-response cycle of an application. 
Middleware functions can access and modify the request and response objects, and can also invoke the next middleware function in the chain. 
Middleware is commonly used to handle tasks such as authentication, logging, and error handling.

-- What is a stream in Node.js?
A stream in Node.js is an abstract interface for working with streaming data. It is used to handle large amounts of data that cannot be processed all at once, such as network data or file data. Streams provide a way to read or write data incrementally, in small chunks, rather than loading the entire data into memory at once.

-- What is clustering in Node.js?
Clustering in Node.js refers to the technique of using multiple Node.js processes to handle incoming requests. 
Clustering allows an application to take advantage of multiple CPU cores and to scale horizontally, increasing its capacity to 
handle more traffic. Clustering is commonly used in production environments to ensure high availability and performance.

-- What is the purpose of the buffer class in Node.js?
The buffer class in Node.js is used to handle binary data, such as images, audio, and video files. 
It allows developers to read, write, and manipulate.

-- NODEJS Package and purposes

Express: is a popular web application framework for Node.js that simplifies the process of building 
server-side applications. It provides a set of features for routing, middleware, and handling requests 
and responses in a web application. Express allows developers to easily create RESTful APIs, 
web applications, and single-page applications.

Axios: A package for making HTTP requests from Node.js.

MongoDB: A package for working with MongoDB databases from Node.js.

Mongoose: A package for working with MongoDB databases that provides a schema-based solution to model your application data.

CORS (Cross-Origin Resource Sharing) : is a security feature implemented in web browsers to restrict 
cross-origin HTTP requests that are initiated from web applications running in one domain to resources 
hosted in another domain.

nodemon: is a tool that helps develop node.js based applications by automatically restarting the 
node application when file changes in the directory are detected.

body-parser: is a middleware module for Node.js that helps to parse incoming request bodies in a 
middleware before your handlers. It parses incoming request data in the req.body object as key-value pairs.

dotenv: is a Node.js package that allows developers to load environment variables from a .env file into 
the process.env object at runtime. This makes it easy to store configuration settings and sensitive 
information like API keys and database passwords 

bcrypt: is a password-hashing function used to store passwords securely in a database. 

JWT (JSON Web Token): is a JSON-based open standard for creating access tokens that allow users 
to assert their identity and permissions. JWTs are commonly used in web applications to authenticate 
users and securely transmit information between parties.
