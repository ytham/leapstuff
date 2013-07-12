class CreateThreejs < ActiveRecord::Migration
  def change
    create_table :threejs do |t|

      t.timestamps
    end
  end
end
