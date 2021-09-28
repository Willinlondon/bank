class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    if valid?(amount)
        @balance += amount
    else
      invalid_error_message
    end
  end

  def withdraw(amount)
    if valid?(amount)
        @balance -= amount
    else
      invalid_error_message
    end
  end

  private

  def valid?(amount)
    if !amount.is_a?(Integer) || amount <= 0
      false
    else
      true
    end
  end

  def invalid_error_message
    raise "Please enter a valid, positive numerical number greater than 0!"
  end

end