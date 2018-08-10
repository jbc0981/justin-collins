class AddColumnsToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :githuburl, :string
    add_column :examples, :description, :text
  end
end
