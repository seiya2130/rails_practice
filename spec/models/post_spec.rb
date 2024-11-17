require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Associations' do
    it 'belongs to a user' do
      user = create(:user)
      post = create(:post, user: user)

      expect(post.user).to eq(user)
    end
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(build(:post)).to be_valid
    end
  end
end