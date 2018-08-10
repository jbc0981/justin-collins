class RenameColumnGithuburlinTableExamplestogiturl < ActiveRecord::Migration
  def change
    rename_column :Examples, :githuburl, :giturl
  end
end
