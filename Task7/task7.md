# Task 7 - Dart Programming Exercises

## Overview
This task consists of 5 Dart programming exercises that cover fundamental programming concepts including user input, list operations, mathematical calculations, and logical conditions.

---

## Exercise 1: Years Until 100

### Description
Create a program that asks the user to enter their name and age, then calculates and displays how many years they have until they reach 100 years old.

### Requirements
- Prompt user for name input
- Prompt user for age input
- Calculate years remaining until 100
- Display personalized message with the result

### Expected Output Example
```
Enter your name: John
Enter your age: 25
Hello John! You have 75 years until you turn 100.
```

---

## Exercise 2: List Filtering

### Description
Given a list `A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]`, write a program that prints out all elements less than 5.

### Requirements
- Use the provided list
- Filter and display elements less than 5
- Handle the list programmatically

### Expected Output
```
Elements less than 5: [1, 1, 2, 3]
```

---

## Exercise 3: Number Divisors

### Description
Create a program that asks the user for a number and prints out a list of all divisors of that number.

### Requirements
- Accept user input for a number
- Find all divisors of the input number
- Display the list of divisors

### Expected Output Example
```
Enter a number: 12
Divisors of 12: [1, 2, 3, 4, 6, 12]
```

---

## Exercise 4: Common List Elements

### Description
Given two lists:
- `A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]`
- `B = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]`

Write a program that returns a list containing only the common elements between them (without duplicates).

### Requirements
- Work with lists of different sizes
- Remove duplicates from the result
- Return only common elements

### Expected Output
```
Common elements: [1, 2, 3, 5, 8, 13]
```

---

## Exercise 5: Prime Number Checker

### Description
Ask the user for a number and determine whether the number is prime or not.

### Requirements
- Accept user input for a number
- Implement prime number checking logic
- Display whether the number is prime or not

### Expected Output Examples
```
Enter a number: 7
7 is a prime number.

Enter a number: 9
9 is not a prime number.
```

---

## Implementation Notes

### For Exercise 1:
- Use `stdin.readLineSync()` for user input
- Convert age string to integer
- Calculate: `years_until_100 = 100 - age`

### For Exercise 2:
- Use list filtering methods like `where()` or `for` loops
- Consider using list comprehensions

### For Exercise 3:
- Divisors are numbers that divide evenly into the given number
- Check numbers from 1 up to the input number

### For Exercise 4:
- Use Set operations for efficient common element finding
- Convert lists to sets to remove duplicates automatically

### For Exercise 5:
- A prime number is divisible only by 1 and itself
- Optimize by checking divisors up to the square root of the number
- Handle edge cases (numbers less than 2)

---

## Testing Guidelines
Test each program with:
1. Normal input values
2. Edge cases (negative numbers, zero, large numbers)
3. Invalid input handling

---

## Submission Requirements
- Complete Dart code for all 5 exercises
- Proper error handling and input validation
- Clean, commented code
- Example outputs for each program