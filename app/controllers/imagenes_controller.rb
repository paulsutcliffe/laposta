class ImagenesController < ApplicationController

  def index
    @imagenes = Imagen.where("post_id = ?", params[:post_id])
    render :json => @imagenes.collect { |p| p.to_jq_upload }.to_json
  end

  def new
    @object_new = Imagen.new    # needed for form_for --> gets the path
  end

  def create
    @imagen = Imagen.new
    @imagen.post_id = params[:post_id]
    @imagen.foto = params[:imagen][:path]
    if @imagen.save
      respond_to do |format|
        format.html {                                         #(html response is for browsers using iframe sollution)
          render :json => [@imagen.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json {
          render :json => [@imagen.to_jq_upload].to_json
        }
      end
    else
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end

  def destroy
    @imagen = Imagen.find(params[:id])
    @imagen.destroy
    render :json => true
  end
end
