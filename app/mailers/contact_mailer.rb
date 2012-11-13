class ContactMailer < ActionMailer::Base
  default :from => "consultas@lapost-a.com"

  def contact_confirmation(contact)
    @contacto = contact
    mail(:to => "#{contact.nombre} <#{contact.email}>", :subject => "Mensaje Enviado desde la web de La Post-A")
  end


  def contact_notification(contact)
    @contacto = contact
    mail(:to => "consultas@lapost-a.com", :reply_to => contact.email, :subject => "Mensaje desde la web")
  end

end
