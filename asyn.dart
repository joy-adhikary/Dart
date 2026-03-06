// synchronous -> line by line execution.
// asynchronous -> non blocking, multiple tasks at the same time.

void SynFunc() {
  print("First Operation");
  print('Second Big Operation');
  print("Third Operation");
  print("Last Operation");
}

void AsynFunc() {
  print("First Operation");
  Future.delayed(Duration(seconds: 3), () => print('Second Big Operation'));
  print("Third Operation");
  print("Last Operation");
}

//                              Future -> kind of js Promise .

// Future is used to handle asynchronous operations in Dart. It represents a value that may not be available yet but will be in the future.
// A Future can be in one of three states: uncompleted, completed with a value, or completed with an error.
// You can use the `then` method to handle the value when the Future completes successfully, and the `catchError` method to handle any errors that may occur.

Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Data fetched successfully",
  );
}

void DataFeching() async {
  print("Fetching data...");

  // fetchData()
  //     .then((result) {
  //       print(result);
  //       print('data fetching completed');
  //     })
  //     .catchError((onError) {
  //       print("Error fetching data: $onError");
  //     });

  // using try catch

  //  this will won't wait because amra respone er jonno wait kortyci nah.

  // try {
  //   dynamic result = fetchData();
  //   print(result);
  //   print('data fetching completed');
  // } catch (onError) {
  //   print("Error fetching data: $onError");
  // }

  // here is the modified code

  try {
    dynamic result = fetchData();
    result.then((value) {
      print(value);
      print('data fetching completed');
    });
  } catch (onError) {
    print("Error fetching data: $onError");
  }

  // This is the proper way to wait for the result of fetchData() before proceeding to the next lines of code.
  // try {
  //   dynamic result = await fetchData();
  //   print(result);
  //   print('data fetching completed');
  // } catch (onError) {
  //   print("Error fetching data: $onError");
  // }
}

Future<String> fetchDataWithError() {
  return Future.delayed(
    Duration(seconds: 2),
    () => throw Exception("Failed to fetch data"),
  );
}

void DataFechingWithError() async {
  print("Fetching data...");

  // await fetchDataWithError()
  //     .then((result) {
  //       print(result);
  //       print('data fetching completed');
  //     })
  //     .catchError((onError) {
  //       print("Error fetching data: $onError");
  //     });

  //  recommended way to handle response

  try {
    String result = await fetchDataWithError();
    if (result != Error) {
      print(result);
      print('data fetching completed');
    }
  } catch (onError) {
    print("Error fetching data: $onError");
  }
}

void main() {
  // SynFunc();
  // print('\n');
  // AsynFunc();

  // DataFeching();
  DataFechingWithError();
}
