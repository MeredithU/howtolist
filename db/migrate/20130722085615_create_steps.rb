class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :content
      t.references :listhowto

      t.timestamps
    end
    add_index :steps, :listhowto_id
  end
end
