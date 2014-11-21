class ContactMailer < ApplicationMailer

  def warn_all_admins contact
    @contact = contact
    admins = ApplicationMailer.admins
    mail(
      to: admins.slice!(0),
      subject: "#{contact.username} nous à contacté!",
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
end
