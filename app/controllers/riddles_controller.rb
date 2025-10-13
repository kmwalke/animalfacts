class RiddlesController < ApplicationController
  before_action :set_riddle, only: %i[ show edit update destroy ]

  # GET /riddles or /riddles.json
  def index
    @riddles = Riddle.all
  end

  def admin
    @riddles = Riddle.all
  end

  # GET /riddles/1 or /riddles/1.json
  def show
  end

  # GET /riddles/new
  def new
    @riddle = Riddle.new
  end

  # GET /riddles/1/edit
  def edit
  end

  # POST /riddles or /riddles.json
  def create
    @riddle = Riddle.new(riddle_params)

    respond_to do |format|
      if @riddle.save
        format.html { redirect_to @riddle, notice: "Riddle was successfully created." }
        format.json { render :show, status: :created, location: @riddle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @riddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riddles/1 or /riddles/1.json
  def update
    respond_to do |format|
      if @riddle.update(riddle_params)
        format.html { redirect_to @riddle, notice: "Riddle was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @riddle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @riddle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riddles/1 or /riddles/1.json
  def destroy
    @riddle.destroy!

    respond_to do |format|
      format.html { redirect_to riddles_path, notice: "Riddle was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riddle
      @riddle = Riddle.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def riddle_params
      params.expect(riddle: [ :hint, :answer ])
    end
end
