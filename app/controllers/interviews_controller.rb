class InterviewsController < ApplicationController
  def new
    @interview = Interview.new(:candidate => Candidate.find(params[:candidate_id]))
  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def create
    @interview = Interview.new(params[:interview])

    if @interview.save
      redirect_to(@interview.candidate, :notice => 'Interview was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @interview = Interview.find(params[:id])

    if @interview.update_attributes(params[:interview])
      redirect_to(@interview.candidate, :notice => 'Interview was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy

    redirect_to(@interview.candidate, :notice => 'Interview was deleted successfully.')
  end
end
