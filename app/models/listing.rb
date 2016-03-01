class Listing < ActiveRecord::Base

belongs_to :category
belongs_to :subcatogory
belongs_to :user
validates :user_id, presence: true
validates_presence_of :title
validates_presence_of :description
validates_presence_of :province
validates_presence_of :city

geocoded_by :full_address
after_validation :geocode

def full_address
[city, province, zipcode].join(', ')
end

def self.search(params)
listings = Listing.where(category_id: params[:category].to_i)
listings = listings.where("title LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
listings = listings.near(params[:location], 20) if params[:location].present?
listings
end


end
