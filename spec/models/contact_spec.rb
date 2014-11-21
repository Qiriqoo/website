require 'rails_helper'

RSpec.describe Contact, type: :model, focus: true do


  describe 'when creates' do
    let(:contact_params) do
      {username: 'Souley Diallo', email: 'sefsef@sef.fr', phone: '1111111111', text: 'Un projet à 15 millions'}
    end

    it 'warn all admins' do
      expect {
        Contact.create!(contact_params)
      }.to change {deliveries_with_subject('Souley Diallo nous à contacté!').count}.by 1

    end

    it 'send an email to the sender' do
      expect {
        Contact.create!(contact_params)
      }.to change {deliveries_with_subject('Votre demande à bien été pris en compte').count}.by 1
    end
  end
end
