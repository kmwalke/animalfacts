class ParagraphsController < ApplicationController
  before_action :set_paragraph, only: %i[ show edit update destroy ]

  # GET /paragraphs or /paragraphs.json
  def index
    @paragraphs = Paragraph.all
  end

  def admin
    @paragraphs = Paragraph.all
  end

  # GET /paragraphs/1 or /paragraphs/1.json
  def show
  end

  # GET /paragraphs/new
  def new
    @paragraph = Paragraph.new
  end

  # GET /paragraphs/1/edit
  def edit
  end

  # POST /paragraphs or /paragraphs.json
  def create
    @paragraph = Paragraph.new(paragraph_params)

    respond_to do |format|
      if @paragraph.save
        format.html { redirect_to @paragraph, notice: "Paragraph was successfully created." }
        format.json { render :show, status: :created, location: @paragraph }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paragraphs/1 or /paragraphs/1.json
  def update
    respond_to do |format|
      if @paragraph.update(paragraph_params)
        format.html { redirect_to @paragraph, notice: "Paragraph was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @paragraph }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paragraphs/1 or /paragraphs/1.json
  def destroy
    @paragraph.destroy!

    respond_to do |format|
      format.html { redirect_to paragraphs_path, notice: "Paragraph was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paragraph
      @paragraph = Paragraph.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def paragraph_params
      params.expect(paragraph: [ :title, :content ])
    end
end
