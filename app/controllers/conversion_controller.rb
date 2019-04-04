class ConversionController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    uploaded_file = UploadedFile.create(conversion_params.merge({converted: false}))
    head :bad_request and return if uploaded_file.nil? || uploaded_file.id.nil?

    if uploaded_file.convert_to_text
      send_file uploaded_file.text_file_path.to_s
    else
      head :unprocessable_entity
    end
  end

  private

  def conversion_params
    params.require(:uploaded_file).permit(:pdf_file)
  end
end
