Here is William's solving of the Bank Challenge during Code Quality week 10 of Makers. Below I have copy/pasted the original instructions and specifications for reference, and up top here will post my thinkings and solving as I go along.

Here is my thinking and process:
1) Keep everything in a single "Bank" class.
2) Four initial methods for the end user to use, which would be Deposit, Withdraw, Balance and Statement. Although I am not against potentially having to add more methods for the sake of refactoring later.
3) I will start with the Deposit and Balance methods and use TDD to get these methods working how I want them to be.
4) I also ironed out a few of the possible edge cases here, such as entering a non integer, entering 0, and a negative amount.
5) Onto the withdrawal method, very similar to the deposit one, minus an additional edge case of not being able to withdraw when you don't have enough cash.
6) Onto the final and hardest method, which is the statement. My thinking here is to create an array of hashes, and save every transaction as a hash, and then have the Statement method simply display them in a tidy format.
7) My thinking for the method worked, and was extensively test driven using IRB, to get the layout and format looking exactly how I wanted it. When attempting to write an Rspec test however, some very funky things were happening and Rspec did not seem to want to check the output of the method at all. Since literally hours had been spent in IRB at this point, I was not at all worried about that.
8) Final steps now, several refactors have taken place, many one liners now exist. Also the class now properly accepts floats, and handles it's decimals all correctly.


# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Self-assessment

Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[????](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=individual_challenges/bank_tech_test.md&prefill_Sentiment=????) [????](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=individual_challenges/bank_tech_test.md&prefill_Sentiment=????) [????](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=individual_challenges/bank_tech_test.md&prefill_Sentiment=????) [????](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=individual_challenges/bank_tech_test.md&prefill_Sentiment=????) [????](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=individual_challenges/bank_tech_test.md&prefill_Sentiment=????)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->