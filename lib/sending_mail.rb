require 'pony'

Pony.options = {
  :body => "Thank you for signing up to Spaced Out!",
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'spacedout380@gmail.com',
    :password             => 'kpam rcuj gozz xflp',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain"
  }
}

def send_mail(email)
  Pony.mail :to => email,
            :from => 'spacedout380@gmail.com',
            :subject => 'Thank you for signing up'
end
