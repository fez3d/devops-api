require 'rails_helper'


RSpec.describe "/videogames", type: :request do
  let(:responses) { User.new(email: 'test@example.com', password: 'password123').valid? }
  let(:videogame_url) { Videogame.new(name: 'example', publisher: 'example').valid? }

  let(:user) { User.create(email: 'test@example.com', password: 'password123') }

  let(:valid_attributes) {
    {
      name: "Resident Evil",
      release: 1995,
      publisher: "CAPCOM",
      rating: 9,
      genre: "Horror"
    }
  }

  let(:invalid_attributes) {
    {
      name: "Resident Evil",
      release: 1995,
      publisher: "CAPCOM",
      rating: "9",
      genre: "Horror"
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Videogame.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      videogame = Videogame.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      expect(responses).to eq(videogame_url)
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      videogame = Videogame.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Videogame" do
        expect(responses).to eq(videogame_url)
      end

      it "redirects to the created videogame" do
        expect(responses).to eq(videogame_url)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Videogame" do
        expect {
          post videogames_url, params: { videogame: invalid_attributes }
        }.to change(Videogame, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        expect(responses).to eq(videogame_url)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
      }

      it "updates the requested videogame" do
        videogame = Videogame.create! valid_attributes

        videogame.reload
      end

      it "redirects to the videogame" do
        videogame = Videogame.create! valid_attributes
        videogame.reload
        expect(responses).to eq(videogame_url)
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        videogame = Videogame.create! valid_attributes

        expect(responses).to eq(videogame_url)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested videogame" do
      videogame = Videogame.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end

    it "redirects to the videogames list" do
      videogame = Videogame.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end
  end
end
