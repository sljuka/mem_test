require_relative 'spec_config'
require_relative '../business_model/process'

describe BusinessModel::Process do

  let!(:data_process)  { DataModel::Process.create name: "some_process", creator_id: 1 }
  let!(:data_action1)   { DataModel::Action.create process: data_process, name: "some_action1", type: "task" }
  let!(:data_action2)   { DataModel::Action.create process: data_process, name: "some_action2", type: "task" }
  let!(:data_task1)     { DataModel::Task.create action: data_action1, name: "task1" }
  let!(:data_task2)     { DataModel::Task.create action: data_action1, name: "task1" }
  let!(:data_task3)     { DataModel::Task.create action: data_action2, name: "task1" }
  let!(:business_process) { BusinessModel::Process.new(data_process) }

  it "runs" do

    business_process.run
    expect(DataModel::Task.where(active: true).count).to eq 2

  end

end