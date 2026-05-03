class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
    @customer.addresses.build # Para criar meu endereço junto com o cliente
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
    params.require(:customer).permit(:name, :phone, addresses_attributes: [:id, :street, :number, :city])
  end
end
