# Dart Asynchronous Stream Handling Bug

This repository demonstrates a common error in Dart related to asynchronous stream handling.  Specifically, it highlights the issue of accessing a stream after it's been closed, which leads to an unhandled exception.

The `bug.dart` file contains the buggy code that throws an exception when it tries to access a closed stream.

The `bugSolution.dart` file provides a corrected version with robust error handling to address this issue.

## How to reproduce

1. Clone this repository.
2. Run `bug.dart` using the Dart VM.  You should observe the unhandled exception.
3. Run `bugSolution.dart` to see the corrected behavior.

## Discussion

This bug showcases the importance of properly handling stream closure in asynchronous Dart code. Failure to do so can lead to unexpected crashes and difficult-to-debug errors. This example provides a clear demonstration and a practical solution to avoid such problems. 