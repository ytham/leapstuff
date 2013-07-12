class CreateCsses < ActiveRecord::Migration
  def change
    create_table :csses do |t|

      t.timestamps
    end
  end
end
