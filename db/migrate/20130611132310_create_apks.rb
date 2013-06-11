class CreateApks < ActiveRecord::Migration
  def change
    create_table :apks do |t|
      t.string :title
      t.string :desc
      t.string :link
      t.string :tag
      t.string :memo

      t.timestamps
    end
  end
end
