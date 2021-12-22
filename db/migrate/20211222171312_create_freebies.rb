class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      #freebies is the join table so it references company and dev
      t.references :company
      t.references :dev
    end
  end
end
