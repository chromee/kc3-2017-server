class Card < ApplicationRecord
  enum rare_type: { N: 1, R: 2, SR: 3, SSR: 4 }

  def rate
    case self.rare_type
    when "N"
      0.85
    when "R"
      0.1
    when "SR"
      0.04
    when "SSR"
      0.01
    end
  end

  def self.gacha
    cards = Card.all.to_a.shuffle!
    max_rate = 0
    cards.each {|card| max_rate += card.rate }
    rate = rand(0..max_rate)
    cards.each do |card|
      rate -= card.rate
      return card if rate <= 0
    end
  end

end
