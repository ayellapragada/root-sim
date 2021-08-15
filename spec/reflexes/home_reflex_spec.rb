require 'rails_helper'

RSpec.describe HomeReflex, type: :reflex do
  describe '#blink' do
    it 'changes the number on page' do
      reflex = build_reflex(connection: { current_user: create(:user) })

      response = reflex.run(:blink)

      expect(response).to morph('#blink-button')
    end
  end
end
