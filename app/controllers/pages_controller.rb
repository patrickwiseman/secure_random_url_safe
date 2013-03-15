class PagesController < ApplicationController
  def url_safe_base64
    @length = params[:length].nil? ? nil : params[:length].to_i
    @secure_random = SecureRandom.urlsafe_base64 @length
    respond_to do |format|
      format.html {render inline: @secure_random}
      format.json {render json: {secure_random: @secure_random}.to_json}
    end
  end

  def base64
    @length = params[:length].nil? ? nil : params[:length].to_i
    @secure_random = SecureRandom.base64 @length
    respond_to do |format|
      format.html {render inline: @secure_random}
      format.json {render json: {secure_random: @secure_random}}
    end
  end

  def hex
    @length = params[:length].nil? ? nil : params[:length].to_i
    @secure_random = SecureRandom.hex @length
    respond_to do |format|
      format.html {render inline: @secure_random}
      format.json {render json: {secure_random: @secure_random}}
    end
  end

  def uuid
    @secure_random = SecureRandom.uuid
    respond_to do |format|
      format.html {render inline: @secure_random}
      format.json {render json: {secure_random: @secure_random}}
    end
  end
end
