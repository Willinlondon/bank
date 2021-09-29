require 'date'

class Bank
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history =[]
  end

  def deposit(amount)
    @balance += amount.round(2) if valid?(amount)
    @history << { "date" => Date.today, "credit" => '%.2f' % amount, "balance" => '%.2f' % @balance }
  end

  def withdraw(amount)
    if valid?(amount)
      @balance >= amount ? @balance -= amount.round(2) : insufficient_funds
      @history << { "date" => Date.today, "debit" => '%.2f' % amount, "balance" => '%.2f' % @balance }
    end
  end

  def transactions
    puts "date || credit || debit || balance"
    @history.reverse.each do |op|
      puts "#{op["date"]} || #{op["credit"]} || #{op["debit"]} || #{op["balance"]}"
    end
  end

  private

  def valid?(amount)
    !amount.is_a?(String) && amount >= 0.01 ? true : invalid_amount
  end

  def invalid_amount
    raise 'Please enter a valid, positive numerical number greater than 0!'
  end

  def insufficient_funds
    raise 'Insufficient funds to make this withdrawal'
  end
end
