class Room < ActiveRecord::Base
  belongs_to :user
  
  validates :home_type, presence:true
  validates :accommodate, presnece:true
  validates :bed_room, presnece:true
  validates :bath_room, presnece:true
  validates :listing_name, presnece: true, length: {maximum: 75}
  validates :summary, presence:true, length: {maximum: 600}
  validates :adress, presence:true, 
  validates :price, numericality: {only_integer: true, greater_than: 5}
  
end
