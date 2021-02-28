require 'rails_helper'

RSpec.describe "trainers/new", type: :view do
  before(:each) do
    assign(:trainer, Trainer.new(
      name: "MyString",
      age: 1,
      gender: "MyString"
    ))
  end

  it "renders new trainer form" do
    render

    assert_select "form[action=?][method=?]", trainers_path, "post" do

      assert_select "input[name=?]", "trainer[name]"

      assert_select "input[name=?]", "trainer[age]"

      assert_select "input[name=?]", "trainer[gender]"
    end
  end
end
