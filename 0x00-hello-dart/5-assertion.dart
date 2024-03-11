void main(List<String> args) {
  var argsInt = int.parse(args[0]);
  (argsInt >= 80) ? print("You Passed") : throw('Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');
}
