require 'rails_helper'

RSpec.describe "videogames/edit", type: :view do
  before(:each) do
    @videogame = assign(:videogame, Videogame.create!())
  end

  it "renders the edit videogame form" do
    render

    assert_select "form[action=?][method=?]", videogame_path(@videogame), "post" do
    end
  end
end
