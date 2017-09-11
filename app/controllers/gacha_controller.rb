class GachaController < ApplicationController
  before_action :set_user

  def top
  end

  def execute
    @card = Card.all.sample
    UserCard.create(user_id: @user.id, card_id: @card.id)
  end

  private
  def set_user
    @user = User.find_by_id(params[:user_id].to_i)
  end
end
