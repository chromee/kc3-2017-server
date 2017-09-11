class GachaController < ApplicationController
  def top
  end

  def execute
    @card = Card.all.sample
  end
end
