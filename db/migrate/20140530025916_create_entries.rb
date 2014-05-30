class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :image
      t.string :link
      t.string :title
      t.string :author
      t.string :description
      t.date :date
      t.time :time
      t.boolean :isarticle
      t.boolean :ismedia
      t.boolean :isevent
      t.boolean :isresource

      t.timestamps
    end
  end
end
