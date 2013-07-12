class CreatePongs < ActiveRecord::Migration
  def change
    create_table :pongs do |t|

      t.timestamps
    end
  end
end
