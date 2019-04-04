class UploadedFile < ApplicationRecord
  has_one_attached :pdf_file
  has_one_attached :text_file

  def pdf_file_path
    ActiveStorage::Blob.service.send(:path_for, pdf_file.key)
  end

  def text_file_path
    ActiveStorage::Blob.service.send(:path_for, text_file.key)
  end

  def convert_to_text
    begin
      text_name = "#{pdf_file.filename}.txt"
      text_path = Rails.root.join('tmp').join(text_name).to_s

      Rails.logger.info("Converting: [#{pdf_file_path}] [#{text_path}]")

      if Rails.env.development?
        `/usr/local/bin/pdftotext -layout #{pdf_file_path} #{text_path}`
      else
        `/usr/bin/pdftotext -layout #{pdf_file_path} #{text_path}`
      end

      self.text_file.attach(io: File.open(text_path),
                            filename: text_name,
                            content_type: 'text/plain')
      self.update(converted: true)
    rescue StandardError
      false
    end
  end
end
