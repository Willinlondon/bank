class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount if valid?(amount)
  end

  def withdraw(amount)
      (@balance >= amount ? @balance -= amount : insufficient_funds) if valid?(amount)
  end

  private

  def valid?(amount)
    !amount.is_a?(Integer) || amount <= 0 ? invalid_amount : true
  end

  def invalid_amount
    raise "Please enter a valid, positive numerical number greater than 0!"
  end

  def insufficient_funds
    raise "Insufficient funds to make this withdrawal"
  end
end