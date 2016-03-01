class CategoriesController < ApplicationController

def index
	@categories = Category.all
	@community = @categories[0]
	@housing = @categories[1]
	@personals = @categories[2]
	@services = @categories[3]
	@forsale = @categories[4]
	@jobs = @categories[5]
end

def show
	@listings = Listing.where(category_id: params[:id])
	@category = Category.find(params[:id])
end

end