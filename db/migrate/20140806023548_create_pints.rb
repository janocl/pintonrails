class CreatePints < ActiveRecord::Migration
  def change
    create_table :pints do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :biography

      t.timestamps
    end
  end
end
