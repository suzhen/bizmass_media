# encoding: utf-8
class Support::CategoriesController < ApplicationController
   before_filter :authenticate_user!
   def index
       @categories = Category.all
       respond_to do |format|
         format.html 
       end
   end

   def new
     @category = Category.new
     respond_to do |format|
       format.html # new.html.erb
     end
   end

   def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end



   def edit
     @category = Category.find(params[:id])
   end

   def create
     @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: '分类创建成功。' }
      else
        format.html { render action: "new" }
      end
    end
   end

   def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:Category])
        format.html { redirect_to @category, notice: '分类更新成功。' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /Categorys/1
  # DELETE /Categorys/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to Categorys_url }
    end
  end




end
