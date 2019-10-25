class CreatePrivateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.references :recipient
      t.references :sender

      t.timestamps
    end
  end
end
