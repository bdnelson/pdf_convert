class CreateUploadedFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :uploaded_files do |t|
      t.boolean :converted

      t.timestamps
    end
  end
end
