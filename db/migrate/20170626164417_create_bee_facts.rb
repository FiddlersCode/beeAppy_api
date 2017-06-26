class CreateBeeFacts < ActiveRecord::Migration[5.1]
  def change
    create_table :bee_facts do |t|
      t.string :fact

      t.timestamps
    end
  end
end
