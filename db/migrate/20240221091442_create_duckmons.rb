class CreateDuckmons < ActiveRecord::Migration[7.1]
  def change
    create_table :duckmons do |t|
      t.text :image
      t.integer :health_point
      t.string :name
      t.integer :damages
      t.text :description
      t.string :attack_name
      t.text :attack_description

      t.timestamps
    end
  end
end
