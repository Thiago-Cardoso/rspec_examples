describe 'matchers de comparacao' do
  it '#equal testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).to equal(y)
  end
end