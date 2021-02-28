require 'rails_helper'

RSpec.describe "trainers/index", type: :view do
  before(:each) do
    assign(:trainers, [
      Trainer.create!(
        name: "Name",
        age: 2,
        gender: "Gender"
      ),
      Trainer.create!(
        name: "Name",
        age: 2,
        gender: "Gender"
      )
    ])
  end

  it "renders a list of trainers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Gender".to_s, count: 2
  end
end
