class SeasController < ApplicationController
  #define your controller actions here

  def index
    @seas = Sea.all
  end

  def new
  end

  def show
    @sea = Sea.find(params[:id])
    # byebug
  end


  def create
    @sea = Sea.create(name: params[:name], temperature: params[:temperature], bio: params[:bio], image_url: params[:image_url], mood: params[:mood], favorite_color: params[:favorite_color], scariest_creature: params[:scariest_creature], has_mermaids: params[:has_mermaids])

    redirect_to sea_path(@sea)
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(params.require(:sea).permit(:name, :temperature, :bio, :image_url, :mood, :favorite_color, :scariest_creature, :has))

    redirect_to sea_path(@sea)
  end

  # def destroy
  #   @sea = Sea.find(params[:id])
  #   @sea.destroy
  #   redirect_to seas_path(@sea)
  # end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
