require './bank_account'

describe BankAccount do
  it "is created with an balance and the name of the client" do
    account = BankAccount.new(500, "Sarah")
    expect(account).to be_a(BankAccount)
  end

  it "can report it's balance" do
    account = BankAccount.new(500, "Sarah")
    expect(account.balance).to eq(500)
  end

  it "can make deposits" do
    account = BankAccount.new(500, "Sarah")
    account.deposit(250)
    expect(account.balance).to eq(750)
  end

  it "can make withdrawals" do
    account = BankAccount.new(500, "Sarah")
    account.withdraw(100)
    expect(account.balance).to eq(400)
  end

  it "can transfer funds to another bank account" do
    account_one = BankAccount.new(500, "Sarah")
    account_two = BankAccount.new(500, "Beyonce")

    account_one.transfer(200, account_two)

    expect(account_one.balance).to eq(300)
    expect(account_two.balance).to eq(700)
  end

  it "throws an error if minimum opening balance of 200 is not met" do
    expect { BankAccount.new(100, "Sarah") }.to raise_error(ArgumentError)
  end

  it "allows the user to change the minimum balance" do
    BankAccount.update_opening_balance(500)
    expect { BankAccount.new(300, "Sarah") }.to raise_error(ArgumentError)
    expect { BankAccount.new(500, "Sarah") }.to_not raise_error
  end
end
