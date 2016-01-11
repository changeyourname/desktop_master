class CreateGemeRunLogs < ActiveRecord::Migration
  def change
    create_table :geme_run_logs do |t|
      t.integer :no
      t.string  :user
      t.string  :log

      t.timestamps
    end
  end
end
