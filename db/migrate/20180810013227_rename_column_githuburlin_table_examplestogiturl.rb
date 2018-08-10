class RenameColumnGithuburlinTableExamplestogiturl < ActiveRecord::Migration
  def change
    rename_column :examples, :githuburl, :giturl
  end
end
