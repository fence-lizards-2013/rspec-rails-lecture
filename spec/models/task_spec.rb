require 'spec_helper'
describe Task do
  let(:task) { build :task }
  subject { task }
  it { should belong_to(:todo) }
  describe "validations" do
    it "title can't be blank" do
      expect(task).to be_invalid
    end

  end
  context "#save" do
    it "returns true if valid attributes" do
      todo = Todo.create :title => "home"
      expect {
        task.title = "clean the sink"
        #task.todo = todo
        task.save
      }.to change(Task, :count).by(1)
    end
  end
  context "#complete" do
    it "returns false" do
      expect(task.complete).to be_false
    end
  end

  # context "#todo" do
  #   let(:todo) { Todo.new :title => "home"}
  #   it "returns the associated todo list" do
  #     task.
  #   end
  # end
end
