class PrefecturesController < ApplicationController
  def index
  end

  def show
    prefecture_name
    @memories = Memorie.where(prefecture_id: params[:id], user_id: current_user.id)
  end

  private

  def prefecture_name
    @prefecture_box = ["北海道","青森県","秋田県","岩手県","山形県","宮城県","福島県",
      "群馬県","栃木県","茨城県","埼玉県","千葉県","東京都","神奈川県",
      "新潟県","富山県","石川県","福井県","長野県","岐阜県","山梨県",
      "愛知県","静岡県","京都府","滋賀県","大阪府","奈良県","三重県","和歌山県","兵庫県",
      "鳥取県","岡山県","島根県","広島県","山口県",
      "香川県","愛媛県","徳島県","高知県","福岡県","佐賀県","長崎県",
      "大分県","熊本県","宮崎県","鹿児島県","沖縄県"]
  end 
end
