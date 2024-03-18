class AddExternalLinkToDesigners < ActiveRecord::Migration[7.1]
  def change
    add_column :designers, :external_link, :string
  end
end
