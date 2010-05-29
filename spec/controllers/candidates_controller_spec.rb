require 'spec_helper'

describe CandidatesController do

  def mock_candidate(stubs={})
    @mock_candidate ||= mock_model(Candidate, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all candidates as @candidates" do
      Candidate.stub(:all) { [mock_candidate] }
      get :index
      assigns(:candidates).should eq([mock_candidate])
    end
  end

  describe "GET show" do
    it "assigns the requested candidate as @candidate" do
      Candidate.stub(:find).with("37") { mock_candidate }
      get :show, :id => "37"
      assigns(:candidate).should be(mock_candidate)
    end
  end

  describe "GET new" do
    it "assigns a new candidate as @candidate" do
      Candidate.stub(:new) { mock_candidate }
      get :new
      assigns(:candidate).should be(mock_candidate)
    end
  end

  describe "GET edit" do
    it "assigns the requested candidate as @candidate" do
      Candidate.stub(:find).with("37") { mock_candidate }
      get :edit, :id => "37"
      assigns(:candidate).should be(mock_candidate)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created candidate as @candidate" do
        Candidate.stub(:new).with({'these' => 'params'}) { mock_candidate(:save => true) }
        post :create, :candidate => {'these' => 'params'}
        assigns(:candidate).should be(mock_candidate)
      end

      it "redirects to the created candidate" do
        Candidate.stub(:new) { mock_candidate(:save => true) }
        post :create, :candidate => {}
        response.should redirect_to(candidate_url(mock_candidate))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved candidate as @candidate" do
        Candidate.stub(:new).with({'these' => 'params'}) { mock_candidate(:save => false) }
        post :create, :candidate => {'these' => 'params'}
        assigns(:candidate).should be(mock_candidate)
      end

      it "re-renders the 'new' template" do
        Candidate.stub(:new) { mock_candidate(:save => false) }
        post :create, :candidate => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested candidate" do
        Candidate.should_receive(:find).with("37") { mock_candidate }
        mock_candidate.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :candidate => {'these' => 'params'}
      end

      it "assigns the requested candidate as @candidate" do
        Candidate.stub(:find) { mock_candidate(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:candidate).should be(mock_candidate)
      end

      it "redirects to the candidate" do
        Candidate.stub(:find) { mock_candidate(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(candidate_url(mock_candidate))
      end
    end

    describe "with invalid params" do
      it "assigns the candidate as @candidate" do
        Candidate.stub(:find) { mock_candidate(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:candidate).should be(mock_candidate)
      end

      it "re-renders the 'edit' template" do
        Candidate.stub(:find) { mock_candidate(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested candidate" do
      Candidate.should_receive(:find).with("37") { mock_candidate }
      mock_candidate.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the candidates list" do
      Candidate.stub(:find) { mock_candidate(:destroy => true) }
      delete :destroy, :id => "1"
      response.should redirect_to(candidates_url)
    end
  end

end
