class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:create]

  def create
    @contacto = Contacto.new(params[:contacto])
    #ContactMailer.contact_confirmation(@contacto).deliver
    #ContactMailer.contact_notification(@contacto).deliver
    create!(:notice => "Mensaje enviado con éxito") { root_path }
  end
end
