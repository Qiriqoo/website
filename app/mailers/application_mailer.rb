class ApplicationMailer < ActionMailer::Base
  default from: 'website@qiriqoo.fr'

  def self.admins
    ['sdiallo88@gmail.com', 'alexandre.ktifa@gmail.com']
  end

end
