require 'bank'

describe Bank do
  it 'checks a starting balance is 0' do
    expect(subject.balance).to eq 0
  end

  it 'checks a client is able to deposit and balance updates' do
    subject.deposit(500)
    expect(subject.balance).to eq 500
  end

  it 'checks that a deposit can only be a inputted as a number' do
    expect{ subject.deposit('blah') }.to raise_error('Please enter a valid, positive numerical number greater than 0!')
  end

  it 'checks that a deposit with decimals can be inputted' do
    subject.deposit(10.10)
    expect(subject.balance).to eq 10.10
  end

  it 'checks that a deposit with more than 2 decimals will be rounded' do
    subject.deposit(10.0987)
    expect(subject.balance).to eq 10.10
  end

  it 'checks that a negative amount cannot be deposited' do
    expect{ subject.deposit(-10) }.to raise_error('Please enter a valid, positive numerical number greater than 0!')
  end

  it 'checks that a negative amount cannot be deposited' do
    expect{ subject.deposit(0) }.to raise_error('Please enter a valid, positive numerical number greater than 0!')
  end
  
  it 'checks a client is able to withdraw and balance updates' do
    subject.deposit(50)
    subject.withdraw(10)
    expect(subject.balance).to eq 40
  end

  it 'checks that a withdrawal can only be a inputted as a number' do
    expect{ subject.withdraw('blah') }.to raise_error('Please enter a valid, positive numerical number greater than 0!')
  end

  it 'checks that a withdrawal with decimals can be inputted' do
    subject.deposit(50)
    subject.withdraw(10.10)
    expect(subject.balance).to eq 39.90
  end

  it 'checks that a withdrawal with more than 2 decimals will be rounded' do
    subject.deposit(50)
    subject.withdraw(10.0987)
    expect(subject.balance).to eq 39.90
  end

  it 'checks that a negative amount cannot be withdrawn' do
    expect{ subject.withdraw(-10) }.to raise_error('Please enter a valid, positive numerical number greater than 0!')
  end

  it 'checks that a negative amount cannot be withdrawn' do
    expect{ subject.withdraw(0) }.to raise_error('Please enter a valid, positive numerical number greater than 0!')
  end

  it 'checks that a user is unable to withdraw funds they do not have' do
    subject.deposit(10)
    expect{ subject.withdraw(50) }.to raise_error('Insufficient funds to make this withdrawal')
  end

  it 'checks that a user will recieve a printed statement from transactions' do
    subject.deposit(50)
    subject.withdraw(10)
    expect(subject.transactions).to include("50.00", "10.00", "40.00")
  end

end
