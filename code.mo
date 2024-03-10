actor Calculator {

  var cell : Int = 0;

  // Add
  public func add(n : Int) : async Int {
    cell += n;
    return cell;
  };

  // Subtract
  public func substract(n : Int) : async Int {
    cell -= n;
    return cell;
  };

  // Multiply
  public func multiply(n : Int) : async Int {
    cell *= n;
    return cell;
  };

  // Divide
  public func divide(n : Int) : async ?Int {
    //Division by zero
    if (n == 0) {
      return null;
    } 
    else {
      cell /= n;
      return ?cell;
    };
  };

  // Clear the calculator and reset its cell to zero
  public func clear() : async () {
    cell := 0;
  };
};