class Account {
  final int id;
  final String nameOfBranch;
  const Account(this.id, this.nameOfBranch);
}

class AccountHolder {
  final String name;
  final String address;
  final int amount;
  final Account account;
  const AccountHolder(this.name, this.account, this.address, this.amount);
}

void main(List<String> args) {
  final firstAccountholder =
      const AccountHolder('John', Account(1, 'B. Garden'), '12, ABC Rd.', 1256);
  print(firstAccountholder.name.hashCode);
  final secondAccountholder = const AccountHolder(
      'Json', Account(2, 'B. Garden'), '123, XYZ Rd.', 2563);
  print(secondAccountholder.name.hashCode);

  /// we want to modify the first account holder's address and amount
  ///
  final firstCopyOfFirstAccountholder = const AccountHolder(
      'John', Account(1, 'B. Garden'), '1234, MNC Rd.', 5613);
  print(firstCopyOfFirstAccountholder.name.hashCode);

  /// we want to modify the second account holder's amount
  ///
  final firstCopyOfSecondAccountholder = const AccountHolder(
      'Json', Account(2, 'B. Garden'), '123, XYZ Rd.', 4562);
  print(firstCopyOfSecondAccountholder.name.hashCode);

  firstAccountholder == firstCopyOfFirstAccountholder
      ? print('true')
      : print('false');

  /// prints false; that means object state has been changed

  secondAccountholder == firstCopyOfSecondAccountholder
      ? print('true')
      : print('false');

  /// prints false; that means object state has been changed
}

/**
 * 48244218
71921806
48244218
71921806
false
false
*
 */
/**
   * The hash code for this object.
   *
   * A hash code is a single integer which represents the state of the object
   * that affects [operator ==] comparisons.
   *
   * All objects have hash codes.
   * The default hash code represents only the identity of the object,
   * the same way as the default [operator ==] implementation only considers objects
   * equal if they are identical (see [identityHashCode]).
   *
   * If [operator ==] is overridden to use the object state instead,
   * the hash code must also be changed to represent that state.
   *
   * Hash codes must be the same for objects that are equal to each other
   * according to [operator ==].
   * The hash code of an object should only change if the object changes
   * in a way that affects equality.
   * There are no further requirements for the hash codes.
   * They need not be consistent between executions of the same program
   * and there are no distribution guarantees.
   *
   * Objects that are not equal are allowed to have the same hash code,
   * it is even technically allowed that all instances have the same hash code,
   * but if clashes happen too often, it may reduce the efficiency of hash-based
   * data structures like [HashSet] or [HashMap].
   *
   * If a subclass overrides [hashCode], it should override the
   * [operator ==] operator as well to maintain consistency.
   */