require 'rails_helper'

RSpec.describe "videogames/index", type: :view do
  before(:each) do
    assign(:videogames, [
      Videogame.create!(),
      Videogame.create!()
    ])
  end

  it "renders a list of videogames" do
    render
  end
end
