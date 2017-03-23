# Week_10-BankTechTest
Makers Academy week 10

One of four shorter challenges set during week 10, this one had a single day of devtime allocated. The most interting part of this challenas finding that you never actually had to give a balance variable to a bank account, you could always get away with calculating it. While i'm aware that in larger applications with many transactions it'll take longer and longer to do this to do this, for smaller applications like this sample it works really well.

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
