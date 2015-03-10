class CreateScreenNames < ActiveRecord::Migration
  def change
    create_table :screen_names do |t|
      t.string :name
    end
  end
end
