class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string,null: false, default: ""

    #validation
    validates :name, presence: true, length:{ maximum:50 }
  end
end
