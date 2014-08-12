class AddBiographyToPint < ActiveRecord::Migration
  def change
    add_column :pints, :biography, :text
  end
end
