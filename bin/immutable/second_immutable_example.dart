class Account {
  final int id;
  final String nameOfBranch;
  const Account(this.id, this.nameOfBranch);
  Account copyWith(int id, String nameOfBranch) {
    return Account(id ?? this.id, nameOfBranch ?? this.nameOfBranch);
  }
}

class AccountHolder {
  final String name;
  final String address;
  final int amount;
  final Account account;
  const AccountHolder(this.name, this.account, this.address, this.amount);
  AccountHolder copyWith(
      String name, Account account, String address, int amount) {
    return AccountHolder(name ?? this.name, account ?? this.account,
        address ?? this.address, amount ?? this.amount);
  }
}

void main(List<String> args) {
  final firstAccountholder =
      const AccountHolder('John', Account(1, 'B. Garden'), '12, ABC Rd.', 1256);
  print(firstAccountholder.name);
  print(firstAccountholder.account.id);
  print(firstAccountholder.account.nameOfBranch);
  print('${firstAccountholder.name} has initial address : ' +
      firstAccountholder.address);
  print('${firstAccountholder.name} has initial amount : ' +
      '${firstAccountholder.amount}');
  print(firstAccountholder.hashCode);

  final updateFirstAccountHolder = firstAccountholder.copyWith(
    firstAccountholder.name,
    Account(firstAccountholder.account.id, 'B. Garden'),
    '123 MNC Rd',
    4561,
  );
  print(updateFirstAccountHolder.name);
  print(updateFirstAccountHolder.account.id);
  print(updateFirstAccountHolder.account.nameOfBranch);
  print('${firstAccountholder.name} has a new address : ' +
      updateFirstAccountHolder.address);
  print('${firstAccountholder.name} has updated amount : ' +
      '${updateFirstAccountHolder.amount}');
  print(updateFirstAccountHolder.hashCode);
  ;
}

/**
 * John
1
B. Garden
John has initial address : 12, ABC Rd.
John has initial amount : 1256
56578422
John
1
B. Garden
John has a new address : 123 MNC Rd
John has updated amount : 4561
731911933

* The hash code of an object should only change if the object changes
   * in a way that affects equality.

 */