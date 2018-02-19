
require 'calculator'

describe Calculator do

  context '#sum' do
  it 'positive numbers' do
      result = subject.sum(5,7)
      expect(result).to eq(12) #expect positive
      #expect(result).not_to eq(12) #espect negative
  end

  it 'with negative numbers and positive numbers' do
      result = subject.sum(-5,7)
      expect(result).to eq(2)
  end

  it 'negative numbers' do
      result = subject.sum(-5,-7)
      expect(result).to eq(-12)
    end
  end
end
