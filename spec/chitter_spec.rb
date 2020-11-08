require 'chitter'

RSpec.describe Messages do

  describe '#see_messages' do
    it 'returns all messages in browser' do
      messages = Messages.all

      expect(messages).to include "This is very interesting!"
      expect(messages).to include "Or maybe not?!"
      expect(messages).to include "lets continue and see!"
    end
  end

end