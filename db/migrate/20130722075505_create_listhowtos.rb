class CreateListhowtos < ActiveRecord::Migration
  def change
    create_table :listhowtos do |t|
      t.string :name

      t.timestamps
    end
  end
end
