class HomeController < ApplicationController
  def home
  end

  def contact
  end
#request contact method
  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] =  I18n.t('home.request_contact.no_email')
    else
     # ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] =  I18n.t('home.request_contact.email_sent')
    end
  #stay in contact page
    redirect_to contact_path

  end
end
