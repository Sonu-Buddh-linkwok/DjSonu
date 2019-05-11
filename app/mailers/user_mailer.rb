class UserMailer < ApplicationMailer
  default from: "from@example.com"
  
  def subscriber(user)
    @user = user
    mail(to: 'sonu@linkwok.com', subject: 'Sample Email')
  end
end
