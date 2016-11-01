class ImportLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.column :number, :integer
      t.column :date, :date

      t.timestamps
    end
  end
end
