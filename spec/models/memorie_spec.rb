require 'rails_helper'

RSpec.describe Memorie, type: :model do
  before do
    @memorie = FactoryBot.build(:memorie)
  end
  context '正常系' do
    it 'contentとimageが存在していれば保存できること' do
      expect(@memorie).to be_valid
    end

    it 'descriptionが空でも登録できる' do
      @memorie.description = nil
      expect(@memorie).to be_valid
    end
  end

  context '異常系' do
    it 'imageがなければ登録できない' do
      @memorie.image = nil
      @memorie.valid?
      expect(@memorie.errors.full_messages).to include("Image can't be blank")
    end

    it 'userがないと登録できない' do
      @memorie.user = nil
      @memorie.valid?
      binding.pry
      expect(@memorie.errors.full_messages).to include("User must exist")
    end

    it 'prefecture_idがないと登録できない' do
      @memorie.prefecture_id = nil
      @memorie.valid?
      expect(@memorie.errors.full_messages).to include("Prefecture can't be blank")
    end
  end
end
