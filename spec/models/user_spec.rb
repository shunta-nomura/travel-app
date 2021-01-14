require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  context '内容に問題がない場合' do
    it 'nameとemail、passwordとpassword_confirmation,日本語のfirst_name last_name,カタカナのkana_first_name,kana_last_nameが存在すれば登録できること' do
      expect(@user).to be_valid
    end
  end
  
  context '内容に問題がある場合' do
    it 'nicknameが空では登録できないこと' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it 'emailが空では登録できないこと' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it 'emailが重複したら登録できないこと' do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end

    it 'passwordが6文字以下では登録できないこと' do
      @user.password = '123as'
      @user.password_confirmation = '123as'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it 'passwordと確認用パスワードは同一出ないと登録できないこと' do
      @user.password = '12345a'
      @user.password_confirmation = '123456a'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
