require 'rails_helper'

RSpec.describe Customer, type: :model do

  it '#full_name' do
    customer = create(:customer)
    puts customer.email
    expect(customer.full_name).to start_with("Sr. ")
  end

  it '#full_name - Sobrescrevendo Atributo' do
    customer = create(:customer_vip)
    expect(customer.vip).to eq(true)
  end

  it 'Herança' do
    customer = create(:customer_vip)
    expect(customer.vip).to eq(true)
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer)
    attrs1 = attributes_for(:customer_vip)
    attrs2 = attributes_for(:customer_default)
    #puts (attrs)
    #puts (attrs1)
    #puts (attrs2)
  end


  it 'Usando o attributes_for com expect' do
    attrs = attributes_for(:customer)
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr. ")
  end


  it 'Atributo transitorio' do
    customer = create(:customer_default, upcased: true)
    expect(customer.name.upcase).to eq(customer.name)
  end

  it 'Cliente Masculino' do
    customer = create(:customer_vip, :male)
    expect(customer.gender).to eq('M')
  end

  #it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }
end
