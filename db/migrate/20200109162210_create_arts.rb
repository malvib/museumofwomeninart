class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :author
      t.string :title
      t.text :description
      t.string :technic
      t.string :place
      t.string :size
      t.string :date
      t.string :photo
      t.references :theme, foreign_key: true

      t.timestamps
    end
  end
end
