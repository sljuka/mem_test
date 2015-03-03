Sequel.migration do
  up do
    create_table(:actions) do
      primary_key :id
      foreign_key :process_id, :processes
      String :name, :null => false
      String :type, :null => false
    end
  end

  down do
    drop_table(:actions)
  end
end
