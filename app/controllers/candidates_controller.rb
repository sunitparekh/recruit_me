class CandidatesController < ApplicationController

  def prepare_filter
    Hash[ *(params[:filter].each.collect { |key, value| [key, value] }).flatten] unless params[:filter].nil?
  end

  def index
    @canidates_search = Candidate.where(prepare_filter || {})
    @candidates = @canidates_search.all
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
      redirect_to(@candidate, :notice => 'Candidate was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @candidate = Candidate.find(params[:id])

    if @candidate.update_attributes(params[:candidate])
      redirect_to(@candidate, :notice => 'Candidate was successfully updated.')
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
