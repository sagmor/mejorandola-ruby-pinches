class DeviseMailerPreview < ActionMailer::Preview

  # Accessible from:
  # http://localhost:3000/rails/mailers/devise_mailer/reset_password_instruction
  def reset_password_instruction
    user = User.first
    Devise::Mailer.reset_password_instructions(user, "token")
  end

end
