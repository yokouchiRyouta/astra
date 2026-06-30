class IdeasController < ApplicationController
  before_action :set_idea, only: %i[ show edit update destroy ]

  # GET /ideas
  def index
    @ideas = Idea.all
  end

  # GET /ideas/1
  def show
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas
  def create
    @idea = Idea.new(idea_params)

    if @idea.save
      redirect_to @idea, notice: "Idea was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /ideas/1
  def update
    if @idea.update(idea_params)
      redirect_to @idea, notice: "Idea was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /ideas/1
  def destroy
    @idea.destroy!
    redirect_to ideas_path, notice: "Idea was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea
      @idea = Idea.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def idea_params
      params.expect(idea: [ :title, :description, :status ])
    end
end
