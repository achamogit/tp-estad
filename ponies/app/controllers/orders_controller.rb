class OrdersController < ApplicationController
  #prawnto :prawn => { :top_margin => 75 }
  
  def show
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text = "Hello World"
        send_data pdf.render
      end
    end
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = current_cart.build_order(params[:order])
    @order.ip_address = request.remote_ip
    if @order.save
      if @order.purchase
        render :action => "success"
      else
        render :action => "failure"
      end
    else
      render :action => 'new'
    end
  end
end
