class Item < ApplicationRecord

  # has_and_belongs_to_many :carts
  has_many :positions
  has_many :carts, through: :positions
  has_many :comments, as: :commentable


  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  # after_initialize {p 'initialize'} #Item.new Item.first
  # after_save {p 'save'} #Item.create Item.save
  # after_create {p 'create'}
  # after_update {p 'update'}
  # after_destroy {p 'destroy'} #Item.desrtoy

end
