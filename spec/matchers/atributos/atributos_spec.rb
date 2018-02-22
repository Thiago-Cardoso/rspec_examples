require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
      pessoa = Pessoa.new
      pessoa.nome = "Thiago"
      pessoa.idade = 20
      expect(pessoa).to have_attributes(nome: start_with("T"), idade: 20)
  end
end