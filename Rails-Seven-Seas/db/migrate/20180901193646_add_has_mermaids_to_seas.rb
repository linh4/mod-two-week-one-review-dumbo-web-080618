class AddHasMermaidsToSeas < ActiveRecord::Migration[5.1]
  def change
    add_column :seas, :has_mermaids, :boolean, :default => true
  end
end
