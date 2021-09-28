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

end
