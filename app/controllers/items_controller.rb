class ItemsController < ProtectedController
  before_action :set_item, only: [ :show, :update, :destroy]

  # GET /items
  def index
    @lists = current_user.lists.all
    @items = current_user.lists.find(params[:list_id]).items.all

    render json: @items
  end

def show 
 
 render json: @item
end
  # POST /items
  def create
    @item = current_user.lists.find(params[:list_id]).items.build(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = current_user.lists.find(params[:list_id]).items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :quantity, :list_id)
    end
end
