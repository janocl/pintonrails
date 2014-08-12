class AddBiographyToPint < ActiveRecord::Migration
  def change
    update_column :pints, :biography, :text
  end
end
