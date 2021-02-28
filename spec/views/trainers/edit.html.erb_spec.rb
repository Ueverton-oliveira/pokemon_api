require 'rails_helper'

RSpec.describe "trainers/edit", type: :view do
  before(:each) do
    @trainer = assign(:trainer, Trainer.create!(
      name: "MyString",
      age: 1,
      gender: "MyString"
    ))
  end

  it "renders the edit trainer form" do
    render

    assert_select "form[action=?][method=?]", trainer_path(@trainer), "post" do

      assert_select "input[name=?]", "trainer[name]"

      assert_select "input[name=?]", "trainer[age]"

      assert_select "input[name=?]", "trainer[gender]"
    end
  end
end
