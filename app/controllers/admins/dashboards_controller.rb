class Admins::DashboardsController < ApplicationController
  def index
    @products = Product.all
  end

  def product_params
    params.require(:product).permit(:title, :image).merge(admin_id: current_admin.id)
  end
end
