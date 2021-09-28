class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    if amount.is_a? Integer
      @balance += amount
    else
      raise "Please enter a valid numerical number"
    end
  end
end