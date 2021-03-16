class Account {
  final int id;
  final String nameOfBranch;
  const Account({this.id, this.nameOfBranch});
}

class AccountHolder {
  final String name;
  final String address;
  final int amount;
  final Account account;
  const AccountHolder({this.name, this.account, this.address, this.amount});
}

void main(List<String> args) {
  final firstAccountholder = const AccountHolder(
    name: 'John',
    account: Account(id: 1, nameOfBranch: 'B. Garden'),
    address: '12, ABC Rd.',
    amount: 1256,
  );
  print('Name of first account holder: ${firstAccountholder.name}');
  print('Account ID of first account holder: ${firstAccountholder.account.id}');
  print('Amount of first account holder: ${firstAccountholder.amount}');

  final secondAccountholder = const AccountHolder(
    name: 'John',
    account: Account(id: 2, nameOfBranch: 'B. Garden'),
    address: '712, XYZ Rd.',
    amount: 5236,
  );
  print('Name of second account holder: ${secondAccountholder.name}');
  print(
      'Account ID of second account holder: ${secondAccountholder.account.id}');
  print('Amount of second account holder: ${secondAccountholder.amount}');

  /// we want to modify the first account holder's address and amount
  ///
  final firstCopyOfFirstAccountholder = const AccountHolder(
    name: 'John',
    account: Account(id: 1, nameOfBranch: 'B. Garden'),
    address: '45, MNC Rd.',
    amount: 2256,
  );
  firstAccountholder.name == firstCopyOfFirstAccountholder.name
      ? print('First account holder\'s name unchanged.')
      : print('Error in first account holder\'s name.');
  firstAccountholder.account.id == firstCopyOfFirstAccountholder.account.id
      ? print('First account holder\'s id unchanged.')
      : print('Error in first account holder\'s id.');

  /// we want to modify the second account holder's amount
  /// while doing so inadvertently account id has been changed
  final firstCopyOfSecondAccountholder = const AccountHolder(
    name: 'John',
    account: Account(id: 1, nameOfBranch: 'B. Garden'),
    address: '712, XYZ Rd.',
    amount: 10236,
  );
  secondAccountholder.name == firstCopyOfSecondAccountholder.name
      ? print('Second account holder\'s name unchanged.')
      : print('Error in second account holder\'s name.');
  secondAccountholder.account.id == firstCopyOfSecondAccountholder.account.id
      ? print('Second account holder\'s id unchanged.')
      : print('Error in second account holder\'s id.');

  firstAccountholder.name.hashCode ==
          firstCopyOfFirstAccountholder.name.hashCode
      ? print('true')
      : print('false');

  /// prints true; that means object state has not been changed

  secondAccountholder.account.id.hashCode ==
          firstCopyOfSecondAccountholder.account.id.hashCode
      ? print('true')
      : print('false');

  /// prints false; that means account id object state has been changed
}

/**
 * Name of first account holder: John
Account ID of first account holder: 1
Amount of first account holder: 1256
Name of second account holder: John
Account ID of second account holder: 2
Amount of second account holder: 5236
First account holder's name unchanged.
First account holder's id unchanged.
Second account holder's name unchanged.
Error in second account holder's id.
true
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