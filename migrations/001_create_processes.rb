Sequel.migration do
  up do
    create_table(:processes) do
      primary_key :id
      foreign_key :start_id, :actions, null: true
      String :name, :null=>false
      String :description
      Integer :creator_id, :null=>false
      Integer :runner_id
      DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP
      DateTime :runned_at
      DateTime :jumped_at
    end
  end

  down do
    drop_table(:processes)
  end
end
