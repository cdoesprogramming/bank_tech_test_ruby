# Bank Tech Test

## Task:

My task for this project was to create a program that can be used through a REPL like IRB and simulate the printing of a bank statement. 
The program needed to have the following requirements:
- Accept deposits and withdrawals,
- Account statement printing including the date, amount and balance, and
- Data that can be kept in memory

## User Stories
```
As a bank customer,
So that I can check how much money is in my account,
I would like to check my balance.
```

```
As a bank customer,
So that I can add money to my account,
I would like to be able to make a deposit.
```

```
As a bank customer,
So that I can take out my money,
I would like to be able to withdraw funds.
```

```
As a bank customer,
So that I can see activity in my account,
I would like to see my transaction history.
```

```
As a bank customer,
So that I can monitor my account,
I would like a printed statement of my transactions.
```

```
As a bank customer,
So that I can look at my past transactions,
I would like to see all previous transactions.
```

## Setting up the project
- Clone this repository
- Run tests by typing the following into the command line
`rspec`
- Open the Ruby REPL IRB by typing the following into the command line
`IRB` 
- Load the `statement.rb` file by typing the following into the command line
`load './lib/statement.rb'`
- Create your account with:
`march = Statement.new`
- Deposit money into your account with:
`march.deposit(number)`
- Withdraw money from your account with:
`march.withdraw(number)`
- Check your balance with:
`march.balance`
- Check your latest transaction with:
`march.transaction`
- Check all of your transactions with:
`march.bank_statement`
- Print your latest bank statement with:
`march.print_format`
- Save your bank statement with:
`march.save_statements`
- And finally, see all previous transactions as a single bank statement with:
`march.load_statements`


## Expected output
After following the instructions above and interacting with the program you can expect an output like the following. 

![Output](https://user-images.githubusercontent.com/79770615/161028479-cb10caa1-dc46-4c8f-9543-ed48136e5e13.png)
