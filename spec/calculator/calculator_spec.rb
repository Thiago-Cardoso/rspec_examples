
require 'calculator'

describe Calculator, "Sobre a Calculadora" do

 context '#div' do
    it 'divide by 0' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3, 0)}.to raise_error("divided by 0")
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.div(3, 0)}.to raise_error(/divided/)
    end
  end

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
