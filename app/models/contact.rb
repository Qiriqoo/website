class Contact < ActiveRecord::Base

  validates :username, presence: true

  validates :email, presence: true

  validates :phone, length: { is: 10 }, allow_nil: true, allow_blank: true
  
  validates :text, presence: true

  after_create :warn_admins
  after_create :warn_sender


  def warn_admins
    ContactMailer.warn_all_admins(self).deliver
  end

  def warn_sender
    ContactMailer.confirm_contact(self).deliver
  end
  
end
