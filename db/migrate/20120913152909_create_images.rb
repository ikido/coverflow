class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.has_attached_file :data
      t.timestamps
    end
  end
end
