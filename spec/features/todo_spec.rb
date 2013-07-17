require 'spec_helper'
describe "Todo", :js => true do
  let!(:todo) { create :todo }
  context "todo list" do
    it "shows a list of my todos" do
      visit root_path
      expect(page).to have_content("Todos")
      expect(page).to have_content(todo.title)
    end
  end
  context "new todo" do
    it "creates a new todo" do
      visit root_path
      expect {
        fill_in "Title", :with => "home"
        click_on "add todo"
      }.to change(Todo, :count).by(1)
    end
  end
end
