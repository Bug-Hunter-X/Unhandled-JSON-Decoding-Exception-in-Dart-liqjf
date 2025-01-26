# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving asynchronous network requests and JSON decoding:  failure to properly handle exceptions that can occur during the JSON parsing process.

The `bug.dart` file shows the code with the error. The `bugSolution.dart` file provides a corrected version.

## Bug Description

The original code lacks robust error handling for `jsonDecode`. If the API response is invalid JSON, the program crashes.  The solution demonstrates improved error handling.

## How to Run

1. Clone this repository.
2. Run `bug.dart` to observe the exception. 
3. Run `bugSolution.dart` to see the corrected code.  You will need to have the `http` package installed (`pub add http`).

## Solution

The solution involves a more comprehensive `try-catch` block that specifically handles `FormatException` and provides more informative error messages.