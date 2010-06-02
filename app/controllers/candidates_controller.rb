class CandidatesController < ApplicationController

  def prepare_filter
    canidates_search = Candidate.where
    unless params[:filter].nil?
      params[:filter].each do |key, value|
        canidates_search = canidates_search.where("#{key} like '%#{value}%'")
      end
    end
    canidates_search
  end

  def index
    @candidates = prepare_filter.order(params[:order] ||  "name").all.paginate(:per_page => params[:per_page] || 20, :page => params[:page])
  end

  def home
    redirect_to candidates_url :filter => {:status => 'In Progress'}
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def create
    @candidate = Candidate.new(params[:candidate])

    if @candidate.save
      redirect_to(@candidate, :notice => 'Candidate details successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @candidate = Candidate.find(params[:id])

    if @candidate.update_attributes(params[:candidate])
      redirect_to(@candidate, :notice => 'Candidate details successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy

    redirect_to(candidates_url)
  end
end
