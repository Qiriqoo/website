require 'rails_helper'

RSpec.describe Response, type: :model do

  describe 'when creates' do
    let(:response_params) do
      { email: 'sefsef@sef.fr', text: 'wsefiwjsoef' }
    end

    it 'send an email' do
      expect {
        Response.create!(response_params)
      }.to change {deliveries_with_subject('Réponse à votre demande').count}.by 1
    end
  end
end
