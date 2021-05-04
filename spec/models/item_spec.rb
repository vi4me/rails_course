require 'rails_helper'

RSpec.describe Item, type: :model do

  it 'validetes name' do
    should validate_presence_of :name
  end

  it 'validetes price' do
    should validate_numericality_of :price
  end

  it 'has_many' do
    should have_many :positions
    should have_many :comments
    should have_many :carts
  end

  it 'has_one' do
    should have_one :image
  end

  context 'calculates' do
    let!(:item1) { create :item, price: 10 }
    let!(:item2) { create :item, price: 20 }
    let!(:order) { create :order }

    it 'calculates the price' do
      # item1 = Item.new(price: 10)
      # item2 = Item.new(price: 20)
      #
      # order = Order.new
      order.items << item1
      order.items << item2

      # order.calculate_total
      expect(order.calculate_total). to be 30.0
    end
  end
end
