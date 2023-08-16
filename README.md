# JavaScript CheatSheet

## Variables

#### Variable Types

JavaScript Variables can be declared in 4 ways:

* Automatically
* Using **var** (should only be used in code written for older browsers)
* Using **let**
* Using **const**

##### Var

```
var x = 140; //  variable x can be reassigned a new value and also redeclared
```

##### Let

```
let x = 202; // variable x cannot be redeclared but can be reassigned a new value
```

##### Const

```
const x = 5; // variable x cannot be reassigned a new value or redeclared
```

#### Data Types

##### Primitive

###### Number

```
var age = 18;                           // number 
```

###### String

```
var name = "Jane";                      // string
```

###### Boolean

```
var truth = false;                      // boolean
```

###### Undefined

```
var a; typeof a;                        // undefined
```

###### Null

```
var a = null;                           // value null
```

##### Non Primitive

###### Array

```
var sheets = ["HTML","CSS","JS"];       // array
```

###### Function

```
var h = function(){};                   // function
```

###### Object

```
var name = {first:"Jane", last:"Doe"};  // object
```

## Operators

### Fundamental Operators

```+```: The **Addition** Operator is used to add two numbers

```-```: The **Subtraction** Operator is used to subtract two numbers

```*```: The **Multiplication** Operator is used to multiply two numbers

```/```: The **Division** Operator is used to divide two numbers

```(...)```: This **Grouping** operator surrounds an expression or sub-expression with a pair of parentheses to override the conventional operator precedence.

```%```: The **Modulus** operator is used to get the remainder when an integer number is divided by another integer number.

```++```: The **Increment** operator is used to increase the value of numbers by one.

```--```: The **Decrement** operator is used to decrease the value of numbers by one.

### Bitwise Operators

```&```: The bitwise **AND** operator returns a 1 in every bit position where both operands' corresponding bits are 1.

```|```:  The bitwise **OR** operator (|) returns a 1 in each bit position where either or both operands' corresponding bits are 1.

```~```: The bitwise **NOT** operator reverses the operand's bits. It turns the operand into a 32-bit signed integer, just like other bitwise operators.

```^```: The bitwise **XOR** operator () returns a 1 in each bit position where the corresponding bits of both operands are 1s but not both.

```<<```: The **left shift** operator shifts the first operand to the left by the provided number of bits. Extra bits that have been relocated to the left are discarded. From the right, zero bits are shifted in.

```>>```: The **right shift** operator moves the first operand to the right by the provided number of bits. Extra bits that have been relocated to the right are discarded.

### Comparison Operators

```==```: The **equality** operator returns a Boolean value when its two operands are equal. It tries to convert and compare operands of different kinds, unlike the rigorous equivalent operator.

```===```: The **equivalent** operator returns a Boolean value when its two operands are equal and they have the same type. It tries to convert and compare operands of the same kinds, unlike the equality operator.

```!=```: The **inequality** operator returns a Boolean value if the two operands are not equal. It tries to convert and compare operands of different kinds, unlike the rigorous inequivalent operator.

```!==```: The **inequivalent** operator returns a Boolean value if the two operands are not equal or they are not of the same type. It tries to convert and compare operands of the same kinds, unlike the inequality operator.

```?```: The **conditional** (ternary) operator is the only one in JavaScript that takes three operands: a condition followed by a question mark (? ), an expression to execute if the condition is true followed by a colon (:), and lastly an expression to execute if the condition is false. As an alternative to an if...else statement, this operator is commonly used.

```>```: The **Greater** than operator returns true if the operand to its left is greater in value than the operand to its right.

```<```: The **Lesser** than operator returns true if the operand to its left is lesser in value than the operand to its right.

```>=```: The **Greater** than equals to operator returns true if the operand to its left is greater in value or equal in value than the operand to its right.

```<=```: The **Lesser** than equals to operator returns true if the operand to its left is lesser in value or equal in value than the operand to its right.

### Logical Operators

```&&```: If and only if all of the operands are true, the **logical AND** operator (logical conjunction) for a set of Boolean operands is true. It will be false if it is not. When evaluating from left to right, the operator returns the value of the first falsy operand encountered, or the value of the last operand if all operands are truth.

```||```: If and only if one or more of its operands are true, the **logical OR** operator (logical disjunction) is true for a set of operands. It's most often used with logical (Boolean) values. It returns a Boolean value when this is the case. The || operator, on the other hand, returns the value of one of the provided operands, hence using it with non-Boolean values will result in an error.

```!```: The logical NOT operator (logical complement, negation) converts truth to falsity. It's most commonly used with logical (Boolean) values. It returns false if its sole operand can be transformed to true when used with non-Boolean values; otherwise, it returns true.

## Control Flows

### If

```
if (hour < 18) {
  greeting = "Good day";
}
```

```
if (hour < 18) {
  greeting = "Good day";
} else {
  greeting = "Good evening";
}
```

```
if (time < 10) {
  greeting = "Good morning";
} else if (time < 20) {
  greeting = "Good day";
} else {
  greeting = "Good evening";
}
```

### Switch

```
switch (new Date().getDay()) {
  case 0:
    day = "Sunday";
    break;
  case 1:
    day = "Monday";
    break;
  case 2:
     day = "Tuesday";
    break;
  case 3:
    day = "Wednesday";
    break;
  case 4:
    day = "Thursday";
    break;
  case 5:
    day = "Friday";
    break;
  case 6:
    day = "Saturday";
}
```

### Exceptions

```try```: We can define a code block for testing errors using the try block.

```catch```; We can set up a block of code to execute in the event of an error using the catch statement. 

```throw```: Instead of the typical JavaScript errors, we can also create custom error messages using the throw statement.

```finally```: JavaScript also allows us to run our code regardless of the outcome of try and catch.

```
function myFunction() {
  const message = document.getElementById("p01");
  message.innerHTML = "";
  let x = document.getElementById("demo").value;
  try {
    if(x.trim() == "") throw "is empty";
    if(isNaN(x)) throw "is not a number";
    x = Number(x);
    if(x > 10) throw "is too high";
    if(x < 5) throw "is too low";
  }
  catch(err) {
    message.innerHTML = "Error: " + err + ".";
  }
  finally {
    document.getElementById("demo").value = "";
  }
}
```

#### Types of Errors

**EvalError**: It indicates that an error has occurred within the eval() method.

**RangeError**: It indicates that some number is “out of range”.

**ReferenceError**: It indicates that an illegal reference was occurring.

**SyntaxError**:  It indicates that a syntax error was occurring.

**TypeError**:  It indicates that a type error was occurring.

**URIError**:  It indicates that an encodeURI() error was occurring.

## Loops

### For

```
for (let i = 0; i < 5; i++) {
  text += "The number is " + i + "<br>";
}
```

### For In

The JavaScript for-in statement loops through the properties of an Object.

```
// iterate over object
const person = {fname:"John", lname:"Doe", age:25};

let text = "";
for (let x in person) {
  text += person[x];
}
```

```
// iterate over array
const numbers = [45, 4, 9, 16, 25];

let txt = "";
for (let x in numbers) {
  txt += numbers[x];
}
```

### For Of

The JavaScript for-of statement loops through the values of an iterable object.

```
// iterate over array
const cars = ["BMW", "Volvo", "Mini"];

let text = "";
for (let x of cars) {
  text += x;
}
```

```
// iterate over string
let language = "JavaScript";

let text = "";
for (let x of language) {
  text += x;
}
```

### While

```
while (i < 10) {
  text += "The number is " + i;
  i++;
}
```

### Do-While

```
do {
  text += "The number is " + i;
  i++;
}
while (i < 10);
```

### Statements

The **break** statement can also be used to jump out of a loop.

```
for (let i = 0; i < 10; i++) {
  if (i === 3) { break; }
  text += "The number is " + i + "<br>";
}
```

The **continue** statement breaks one iteration (in the loop), and continues with the next iteration in the loop.

```
for (let i = 0; i < 10; i++) {
  if (i === 3) { continue; }
  text += "The number is " + i + "<br>";
}
```

## Functions

```
function addNumbers(a, b) {
  return a + b; ;
}

x = addNumbers(1, 2);
```

## Classes

```
class Car {
  constructor(name, year) {
    this.name = name;
    this.year = year;
  }
  age(x) {
    return x - this.year;
  }
}

const date = new Date();
let year = date.getFullYear();

const myCar = new Car("Ford", 2014);
document.getElementById("demo").innerHTML=
"My car is " + myCar.age(year) + " years old.";
```

## Built-ins

### Globals

### Time

#### Get

```getFullYear()```: Get year as a four digit number (yyyy)

```getMonth()```: Get month as a number (0-11)

```getDate()```: Get day as a number (1-31)

```getDay()```: Get weekday as a number (0-6)

```getHours()```: Get hour (0-23)

```getMinutes()```: Get minute (0-59)

```getSeconds()```: Get second (0-59)

```getMilliseconds()```: Get millisecond (0-999)

```getTime()```: Get time (milliseconds since January 1, 1970)

#### Set

```setDate()```: Set the day as a number (1-31)

```setFullYear()```: Set the year (optionally month and day)

```setHours()```: Set the hour (0-23)

```setMilliseconds()```: Set the milliseconds (0-999)

```setMinutes()```: Set the minutes (0-59)

```setMonth()```: Set the month (0-11)

```setSeconds()```: Set the seconds (0-59)

```setTime()```: Set the time (milliseconds since January 1, 1970)

### Data Output

```prompt()```: This function is used for creating a dialogue box for taking input from the user.

```alert()```: This function is used for outputting information in an alert box in the browser window.

```console.log()```: This function is used for writing data to the browser's console and is used for the purpose of debugging code by developers.

```document.write()```: This function is used for writing straight to our HTML document.

```confirm()```: This function is used for opening up a yes or no dialogue box and for returning a boolean value depending upon the user's click.

### Numbers

#### Methods

```toString()```: Returns a number as a string.

```toExponential()```: Returns a number written in exponential notation.

```toFixed()```: Returns a number written with a number of decimals.

```toPrecision()```: Returns a number written with a specified length.

```ValueOf()```: Returns a number as a number.

### Strings

#### Escape chars

```\'```: Single quotes

```\"```: Double quotes

```\t```: Horizontal tab

```\v```: Vertical tab

```\\```: Backslash

```\b```: Backspace

```\f```: Form feed

```\n```: Newline

```\r```: Carriage return

#### Methods

```toLowerCase()```: This method is used for converting strings to lower case.

```toUpperCase()```: This method is used for converting strings to upper case.

```charAt()```: This method is used for returning the character at a particular index of a string.

```charCodeAt()```: This method is used for returning to us the Unicode of the character at a  given index.

```fromCharCode()```: This method is used for returning a string made from a particular sequence of UTF-16 code units.

```concat()```: This method is used for concatenating or joining multiple strings into a single string.

```match()```: This method is used for retrieving the matches of a string against a pattern string which is provided.

```replace()```: This method is used for finding and replacing a given text in the string.

```indexOf()```: This method is used for providing the index of the first appearance of a given text inside the string.

```lastIndexOf()```: This method is similar to the indexOf() methods and only differs in the fact that it searches for the last occurrence of the character and searches backwards.

```search()```: This method is used for executing a search for a matching text and returning the index of the searched string.

```substr()```: This method is pretty much the same as the slice() method but the extraction of a substring in it depends on a given number of characters.

```slice()```: This method is used for extracting an area of the string and returning it.

```split()```: This method is used for splitting a string object into an array of strings at a particular index.

```substring()```: Even this method is almost the same as the slice() method but it does not allow negative positions.

```valueOf()```: This method is used for returning the primitive value (one without any properties or methods) of a string object.

### Arrays

#### Methods

```pop()```: This method is used for removing the last element of an array.

```push()```: This method is used for adding a new element at the very end of an array.

```concat()```: This method is used for joining various arrays into a single array.

```reverse()```: This method is used for reversing the order of the elements in an array.

```shift()```: This method is used for removing the first element of an array.

```slice()```: This method is used for pulling a copy of a part of an array into a new array.

```splice()```: This method is used for adding elements in a particular way and position.

```toString()```: This method is used for converting the array elements into strings.

```unshift()```: This method is used for adding new elements at the beginning of the array.

```valueOf()```: This method is used for returning the primitive value of the given object.

```indexOf()```: This method is used for returning the first index at which a given element is found in an array.

```lastIndexOf()```: This method is used for returning the final index at which a given element appears in an array.

```join()```: This method is used for combining elements of an array into one single string and then returning it.

```sort()```: This method is used for sorting the array elements based on some condition.

## Regular Expressions

### Characters

```.```: any **single character** (dot).

```\s```: **whitespace** character.

```\S```: **non-whitespace** character.

```\d```: **digit** character.

```\D```: **non-digit** character.

```\w```: **word.**

```\W```: **non-word.**

```\t```: horizontal tab.

```\v```: vertical tab.

```\b```: backspace.

```\f```: form feed.

```\n```: newline.

```\r```: carriage return.

### Ranges

```[abc]```: a single character **a b** or **c.**

```[0-9]```: a character in range **0 through 9.**

```[a-z]```: a character in range **a through z.**

```[a-zA-Z]```: a character in range **a through z and A through Z.**

```[^abc]```: any character **except a b** or **c.**

```[^a-z]```: any character **except** in range **a through z.**

```[^0-9]```: any character **except** in range **0 through 9.**

### Quantifiers

```*```: **0** or **more** of the previous (**greedy** - matches as much as possible).

```?```: **0** or **more** of the previous (**lazy** - matches as few as possible).

```+```: **1** or **more** of the previous.

```{3}```: **exactly 3** of the previous.

```{3,}```: **from 3** of the previous (3 or more).

```{3,6}```: from **3 to 6** of the previous.

### Anchors

```^```: **start** of string.

```$```: **end** of string.

### Grouping

```|```: match either construct before **OR** after.

```(abc)```: isolates part of the full match to be later referred to by ID within the regex or the matches array (IDs start at 1).

```(?:ab{2}c{3})```: allows you to **apply quantifiers** to part of your regex. Will match 'abbccc'.

```(?=abc)```: the pattern to the left will be matched only if 'abc' **follows**, but will not actually include 'abc'.

```(?!abc)```: the pattern to the left will be matched only if 'abc' **doesn't follow**, but will not actually include 'abc'.