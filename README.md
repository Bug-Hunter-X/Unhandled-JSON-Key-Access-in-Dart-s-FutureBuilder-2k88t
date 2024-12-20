# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart applications when handling asynchronous data fetching and JSON parsing:  accessing a key in a JSON response that might not exist.

The `bug.dart` file shows the code with the potential error.  The `bugSolution.dart` file provides a corrected version with improved error handling.

## Problem

The original code attempts to access a key directly from the JSON response without checking if the key exists. If the key is missing, a runtime error occurs.  This leads to application crashes or unexpected behavior.

## Solution

The solution involves adding checks to ensure the key exists before accessing it. This prevents runtime errors and allows for more graceful handling of missing data.