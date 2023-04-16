require 'rails_helper'

RSpec.describe "videogames/show", type: :view do
  before(:each) do
    @videogame = assign(:videogame, Videogame.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
