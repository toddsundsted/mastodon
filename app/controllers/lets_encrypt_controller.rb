class LetsEncryptController < ApplicationController

  def challenge
    if ENV['LETSENCRYPT_CODE'].split('.').first == params[:id]
      render text: ENV['LETSENCRYPT_CODE']
    else
      render text: 'Not Found', status: :not_found
    end
  end

end
