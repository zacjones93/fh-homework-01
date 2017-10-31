require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
  let(:valid_attributes) { { first_name: 'John', last_name: 'Doe', age: 46 } }
  let(:invalid_attributes) { { first_name: 'John', last_name: '', age: 46 } }
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all authors as @authors" do
      author = Author.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:authors)).to eq([author])
    end
  end

  describe "GET #show" do
    it "assigns the requested author as @author" do
      author = Author.create! valid_attributes
      get :show, params: {id: author.to_param}, session: valid_session
      expect(assigns(:author)).to eq(author)
    end
  end

  describe "GET #new" do
    it "assigns a new author as @author" do
      get :new, params: {}, session: valid_session
      expect(assigns(:author)).to be_a_new(Author)
    end
  end

  describe "GET #edit" do
    it "assigns the requested author as @author" do
      author = Author.create! valid_attributes
      get :edit, params: {id: author.to_param}, session: valid_session
      expect(assigns(:author)).to eq(author)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Author" do
        expect {
          post :create, params: {author: valid_attributes}, session: valid_session
        }.to change(Author, :count).by(1)
      end

      it "assigns a newly created author as @author" do
        post :create, params: {author: valid_attributes}, session: valid_session
        expect(assigns(:author)).to be_a(Author)
        expect(assigns(:author)).to be_persisted
      end

      it "redirects to the created author" do
        post :create, params: {author: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Author.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved author as @author" do
        expect {
          post :create, params: {author: invalid_attributes}, session: valid_session
        }.to change(Author, :count).by(0)
      end

      it "re-renders the 'new' template" do
        post :create, params: {author: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {first_name: 'Jane', last_name: 'Doe', age:  36}
      }

      it "updates the requested author" do
        author = Author.create! valid_attributes
        put :update, params: {id: author.to_param, author: new_attributes}, session: valid_session
        expect(response).to redirect_to(author)
      end

      it "assigns the requested author as @author" do
        author = Author.create! valid_attributes
        put :update, params: {id: author.to_param, author: valid_attributes}, session: valid_session
        expect(assigns(:author)).to eq(author)
      end

      it "redirects to the author" do
        author = Author.create! valid_attributes
        put :update, params: {id: author.to_param, author: valid_attributes}, session: valid_session
        expect(response).to redirect_to(author)
      end
    end

    context "with invalid params" do
      it "assigns the author as @author" do
        author = Author.create! valid_attributes
        put :update, params: {id: author.to_param, author: invalid_attributes}, session: valid_session
        expect(assigns(:author)).to eq(author)
      end

      it "re-renders the 'edit' template" do
        author = Author.create! valid_attributes
        put :update, params: {id: author.to_param, author: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested author" do
      author = Author.create! valid_attributes
      expect {
        delete :destroy, params: {id: author.to_param}, session: valid_session
      }.to change(Author, :count).by(-1)
    end

    it "redirects to the authors list" do
      author = Author.create! valid_attributes
      delete :destroy, params: {id: author.to_param}, session: valid_session
      expect(response).to redirect_to(authors_url)
    end
  end

end
