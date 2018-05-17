class CreateBlogRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_roles do |t|
      t.references :user, foreign_key: true
      t.references :blog, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
