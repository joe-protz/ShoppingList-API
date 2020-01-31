class AddListToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :list, foreign_key: true
  end
end
