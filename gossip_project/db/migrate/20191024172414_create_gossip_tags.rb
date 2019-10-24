class CreateGossipTags < ActiveRecord::Migration[6.0]
  def change
    create_table :gossip_tags do |t|
      t.references :gossip, index: true
      t.references :tag, index: true
      t.timestamps
    end
  end
end
