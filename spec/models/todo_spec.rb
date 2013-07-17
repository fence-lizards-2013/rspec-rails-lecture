require 'spec_helper'
describe Todo do
  let(:todo) { build :todo } # build is part of FactoryGirl
  # subject and "should validate_presence_of" are part of Shoulda
  subject { todo }
  it { should validate_presence_of :title}

  context "#save" do
    # it "returns true" do
    #   expect {
    #     todo.save
    #   }.to change(Todo, :count).by(1)
    # end
    # it "returns false if title is blank" do
    #   todo.title = nil
    #   expect {
    #     todo.save
    #   }.to_not change(Todo, :count)
    # end
  end
end
