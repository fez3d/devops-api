require 'rails_helper'

RSpec.describe "videogames/new", type: :view do
  before(:each) do
    assign(:videogame, Videogame.new())
  end

  it "renders new videogame form" do
    render

    assert_select "form[action=?][method=?]", videogames_path, "post" do
    end
  end
end
