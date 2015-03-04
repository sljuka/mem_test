Sequel.migration do
  up do
    create_table(:tasks) do
      primary_key :id
      foreign_key :action_id, :actions
      Integer :assignee_id
      String :name, :null => false
      TrueClass :active, :default => false
    end
  end

  down do
    drop_table(:tasks)
  end
end
