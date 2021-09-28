require 'bank'

describe Bank do

  before do
    @test_bank = Bank.new
  end

  it 'checks a starting balance is 0' do
    expect(@test_bank.balance).to eq 0
  end

  it 'checks a client is able to deposit and balance updates' do
    @test_bank.deposit(500)
    expect(@test_bank.balance).to eq 500
  end

  it 'checks that a deposit can only be a inputted as a number' do
    expect{@test_bank.deposit('blah')}.to raise_error("Please enter a valid numerical number")
  end
end