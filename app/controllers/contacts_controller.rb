class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Cool'
    else
      render :index
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:username, :email, :phone, :text)      
    end

end