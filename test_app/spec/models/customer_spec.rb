require 'rails_helper'

RSpec.describe Customer, type: :model do

  fixtures:customers

  it 'Create a Customer' do
     # subject.name = 'Thiago'
     # subject.email = 'thiagocardosooti@gmail.com'
     #subject.save
      customer = customers(:thiago)
      #expect(subject.full_name).to eq("Sr. Thiago")
      expect(customer.full_name).to eq("Sr. Thiago")
  end
end
