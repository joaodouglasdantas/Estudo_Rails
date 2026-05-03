class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params) # Parametros do frontend

    if @customer.save
      redirect_to customers_path, notice: "Cliente criado com sucesso!"
    else
      render :new, alert: "Erro ao criar cliente."
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phone) # Somente nome e meu phone
  end
end
