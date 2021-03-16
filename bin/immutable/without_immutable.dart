class Account {
  int _id;
  final String _nameOfBranch;
  int get id => _id;
  set id(int id) => _id = id;
  String get nameOfBranch => _nameOfBranch;
  Account(this._id, this._nameOfBranch);
}

class AccountHolder {
  String name;
  String address;
  int amount;
  Account account;
  AccountHolder(this.name, this.account, this.address, this.amount);
}

void main(List<String> args) {
  var a1 = AccountHolder('name', Account(1, 'B. Garden'), 'A Rd.', 1000);
  var a2 = AccountHolder('name', Account(1, 'B. Garden'), 'A Rd.', 1000);
  var a3 = AccountHolder('name', Account(1, 'B. Garden'), 'A Rd.', 1000);

  print(a1.account.id);
  print(a2.account.id);
  print(a3.account.id);
  a1.account.id = 2;
  print(a1.account.id);
}

/**
 * 1
1
1
2

 */