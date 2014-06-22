class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.text :hobbies
      t.string :starsign

      t.timestamps
    end
  end
end
