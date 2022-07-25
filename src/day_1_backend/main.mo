// add
// square
// days_to_second
// increment_counter
// clear_counter
// divide
// is_even
// sum_of_array
// maximum
// remove_from_array
// selection_sort

import Array "mo:base/Array";
import Int "mo:base/Int";
import Debug "mo:base/Debug";
import Text "mo:base/Text";

actor {

  private var counter = 0;

  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
  
  public func add(a : Nat, b : Nat) : async Nat {
    return a+b;
  };
  public func square(a : Nat) : async Nat {
    return a*a;
  };
  public func days_to_second(d: Nat) : async Nat {
    return d*24*60*60;
  };
  public func increment_counter() : async Nat {
    counter += 1;
    return counter; 
  };
  public func clear_counter() : async Nat {
    counter := 0;
    return 0;
  };
  public func divide(a : Nat, b : Nat) : async Nat {
    return a/b;
  };
  public func is_even(a: Nat) : async Bool {
    if (a%2 == 1) {
      return false;
    };
    return true;
  };
  public func sum_of_array(a: [Nat]) : async Nat {
    var s = 0;
    for (v : Nat in a.vals()) {
      s += v;
    }; 
    return s;
  };
  public func maximum(a: [Nat]) : async Nat {
    var s = 0;
    for (v : Nat in a.vals()) {
      if (s < v) s := v
    }; 
    return s;
  };
  public func remove_from_array(a: [Nat], b: Nat) : async [Nat] {
    return Array.filter<Nat>(a, func (x : Nat) : Bool {
      return x != b;
    });
  };
  public func selection_sort(b: [Nat]) : async [Nat] {
		// var b = [];
		var a = Array.thaw<Nat>(b);
		for (i : Nat in a.keys()) {
			var k = i;
			for (j: Nat in a.keys()) {
				if (j > i and a[k] > a[j]) {
					k := j;
				}; 
			};
			if (i != k) {
				a[i] += a[k];
				a[k] := a[i] - a[k];
				a[i] := a[i] - a[k];
			};
			// Debug.print(Int.toText(a[i]));
		// 	// Array.append(b, a[i]);
    };
		return Array.freeze(a);
  };
};
