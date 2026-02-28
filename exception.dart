void tryCatch() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print("Caught exception: $e");
  } finally {
    print(
      "Finally block sob somoi execut kore try te error ashuk ba na ashuk.",
    );
  }
}

// Try-catch block with custom exception ( Exception class use kore custom error message throw kora )

void try_Catch_With_Exception(int age) {
  try {
    if (age < 19) {
      throw Exception("You must be at least 18 years old to use this service.");
    } else {
      print("Welcome to the service!");
    }
  } catch (e) {
    print(e);
  } finally {
    print(
      "This block will always execute, regardless of whether an exception was thrown or not.",
    );
  }
}

class AgeValidationException implements Exception {
  String negAge() {
    return "Age cannot be negative.";
  }

  String lowwerAge() {
    return "Age cannot be less than 18.";
  }

  String zeroAge() {
    return "Age cannot be zero.";
  }
}

void try_Catch_With_Centralized_Exception_Handling(int age) {
  try {
    if (age < 0) {
      throw AgeValidationException().negAge();
    } else if (age == 0) {
      throw AgeValidationException().zeroAge();
    } else if (age < 18) {
      throw AgeValidationException().lowwerAge();
    } else {
      print("Welcome to the service!");
    }
  } catch (e) {
    print("An error occurred => $e");
  }
}

void main() {
  // tryCatch();
  // tryCatchWithException(17);
  // tryCatchWithException(20);
  try_Catch_With_Centralized_Exception_Handling(-20);
  try_Catch_With_Centralized_Exception_Handling(0);
  try_Catch_With_Centralized_Exception_Handling(15);
}
