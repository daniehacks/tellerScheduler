class CreateTellers < ActiveRecord::Migration
  def change
    create_table :tellers do |t|
      t.string :name

      t.timestamps
    end
  end
end
