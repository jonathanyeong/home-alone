class AddSlugColumnToDogs < ActiveRecord::Migration[7.1]
  def change
    add_column :dogs, :slug, :string
  end
end
