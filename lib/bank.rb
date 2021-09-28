require 'date'

class Bank
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history =[]
  end

  def deposit(amount)
    @balance += amount if valid?(amount)
    @history << { "date" => Date.today, "credit" => amount, "balance" => @balance }
  end

  def withdraw(amount)
    if valid?(amount)
      @balance >= amount ? @balance -= amount : insufficient_funds
      @history << { "date" => Date.today, "debit" => amount, "balance" => @balance}
    end
  end

  def transactions
    puts "date || credit || debit || balance"
    @history.reverse.each do |transaction|
      puts "#{transaction["date"]}||#{transaction["credit"]}||#{transaction["debit"]}||#{transaction["balance"]}"
    end
  end

  private

  def valid?(amount)
    !amount.is_a?(Integer) || amount <= 0 ? invalid_amount : true
  end

  def invalid_amount
    raise 'Please enter a valid, positive numerical number greater than 0!'
  end

  def insufficient_funds
    raise 'Insufficient funds to make this withdrawal'
  end
end
