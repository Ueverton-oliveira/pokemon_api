require 'rails_helper'

RSpec.describe "trainers/show", type: :view do
  before(:each) do
    @trainer = assign(:trainer, Trainer.create!(
      name: "Name",
      age: 2,
      gender: "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Gender/)
  end
end
