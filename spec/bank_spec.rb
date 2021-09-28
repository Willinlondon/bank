require 'bank'

describe Bank do
  it 'checks a starting balance is 0' do
    expect(subject.balance).to eq 0
  end
end