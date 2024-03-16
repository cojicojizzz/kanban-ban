class CardController < ApplicationController
  # newアクションの前にset_listを実行
  before_action :set_list, only: :new

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to :root
    else
      # エラーが発生した場合はnew.html.erbを表示させるため、再度set_listを実行
      set_list
      render action: :new
    end
  end

  private
    def card_params
      params.require(:card).permit(:title, :memo, :list_id)
    end

  # リストのIDを元にリストを取得
  def set_list
    @list = List.find_by(id: params[:list_id])
  end
end
