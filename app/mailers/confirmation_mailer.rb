class ConfirmationMailer < ApplicationMailer
  def confirmation_mail(blog)
      @blog = blog
      
      mail to:"5446shin@gmail.com", subject:"投稿の確認メール"
  end
end

