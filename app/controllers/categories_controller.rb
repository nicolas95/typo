class CategoriesController < GroupingController
  # index - inherited
  # show - inherited

  def new
    @category = Category.new
    @categories = Category.all
  end # new

  def edit
    @category = Category.find(params[:id])
    @categories = Category.all
  end # edit

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params)
      rediret_to root_path
    else
      render 'edit'
    end
  end # update

  def create
    @category = Category.new(params)
    if @category.save
      redirect_to root_path
    else
      render 'new'
    end # if

  end # create
end # class CategoriesController
