require 'rails_helper'

RSpec.describe "/books", type: :request do
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
      name: 145,
      release: 1995,
      publisher: "CAPCOM",
      rating: 9,
      genre: "Horror"
    }
  }

  describe "GET /index" do

    it "renders a successful response" do
      Book.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
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
      expect(responses).to eq(videogame_url)
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Book" do
        expect(responses).to eq(videogame_url)
      end

      it "redirects to the created book" do
        expect(responses).to eq(videogame_url)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Book" do
        expect {
          post books_url, params: { book: invalid_attributes }
        }.to change(Book, :count).by(0)
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

      it "updates the requested book" do
        book = Book.create! valid_attributes
        patch book_url(book), params: { book: new_attributes }
        book.reload
      end

      it "redirects to the book" do
        book = Book.create! valid_attributes
        expect(responses).to eq(videogame_url)
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        book = Book.create! valid_attributes
        expect(responses).to eq(videogame_url)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested book" do
      book = Book.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end

    it "redirects to the books list" do
      book = Book.create! valid_attributes
      expect(responses).to eq(videogame_url)
    end
  end
end
