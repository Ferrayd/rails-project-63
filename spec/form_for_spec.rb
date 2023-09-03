# frozen_string_literal: true

require_relative '../lib/hexlet_code'

User = Struct.new(:name, :job, :gender, keyword_init: true)

describe HexletCode do
  describe 'form' do
    context 'is' do
      let(:user) { User.new name: 'rob', job: 'hexlet', gender: 'm' }

      it 'test_users_url' do |_example|
        expect(HexletCode.form_for(user, url: '/users') { '' }).to eq('<form action="/users" method="post"></form>')
      end
    end
  end
end
