class ConfirmationMailer < ApplicationMailer
  def confirmation_mail(blog)
      @blog = blog
      
      mail to: @blog.user.email, subject:"投稿の確認メール"
  end
end