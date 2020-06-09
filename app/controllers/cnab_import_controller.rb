class CnabImportController < ApplicationController
  def import
    render json: nil, status: :unsupported_media_type
  end
end