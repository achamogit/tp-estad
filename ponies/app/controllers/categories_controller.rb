class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]  
  # def index
  #   @categories = Category.find(:all)
  # end
  
  def index
    @categories = Category.all
  end  
  
  
  def show
    #@category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end
  

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  
  def edit
    #@category = Category.find(params[:id])
  end
  

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end  
  
  def destroy
    # @category = Category.find(params[:id])
    @category.destroy
    
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
      format.js { render :layout => false }
    end
    
  end  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :profession)
    end  
  
end
