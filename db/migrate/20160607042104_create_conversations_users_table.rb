class CreateConversationsUsersTable < ActiveRecord::Migration
  def change
    create_table :conversations_users_tables do |t|
      t.references :user
      t.references :conversation
    end
  end
end
