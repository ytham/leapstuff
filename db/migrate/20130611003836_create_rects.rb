class CreateRects < ActiveRecord::Migration
  def change
    create_table :rects do |t|

      t.timestamps
    end
  end
end
