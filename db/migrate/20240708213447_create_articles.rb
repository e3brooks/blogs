class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    # create_table specifies how articles table should be constructed
    create_table :articles do |t|
      # title and body generated because included in generate command
      t.string :title
      t.text :body

      # defines 2 additional columns: created_at and updated_at
      t.timestamps
    end
  end
end
