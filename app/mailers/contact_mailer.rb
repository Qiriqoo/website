class ContactMailer < ApplicationMailer

  def warn_all_admins contact
    admins = @@admins
    
    @contact = contact
    mail(
      to: admins.slice!(0),
      subject: "#{contact.username} nous à contacté!",
      from: "#{contact.id}-#{contact.username.parameterize}@contact.dev-qiriqoo.herokuapp.com",
      cc: admins
    )
  end

  def confirm_contact contact
    @contact = contact
    mail(
      to: contact.email,
      subject: 'Votre demande à bien été pris en compte'
    )
  end

  def response response
    @response = response
    mail(
      to: response.email,
      subject: 'Réponse à votre demande'
    )
  end
end
