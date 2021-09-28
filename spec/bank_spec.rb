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
    expect{subject.deposit('blah')}.to raise_error("Please enter a valid, positive numerical number greater than 0!")
  end

  it 'checks that a negative amount cannot be deposited' do
    expect{subject.deposit(-10)}.to raise_error("Please enter a valid, positive numerical number greater than 0!")
  end

  it 'checks that a negative amount cannot be deposited' do
    expect{subject.deposit(0)}.to raise_error("Please enter a valid, positive numerical number greater than 0!")
  end
  
end