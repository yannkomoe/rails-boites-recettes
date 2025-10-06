class RecettesController < ApplicationController
  before_action :set_recette, only: %i[ show edit update destroy ]

  # GET /recettes or /recettes.json
  def index
    @recettes = Recette.all
  end

  # GET /recettes/1 or /recettes/1.json
  def show
  end

  # GET /recettes/new
  def new
    @recette = Recette.new
  end

  # GET /recettes/1/edit
  def edit
  end

  # POST /recettes or /recettes.json
  def create
    @recette = Recette.new(recette_params)

    respond_to do |format|
      if @recette.save
        format.html { redirect_to @recette, notice: "Recette was successfully created." }
        format.json { render :show, status: :created, location: @recette }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recettes/1 or /recettes/1.json
  def update
    respond_to do |format|
      if @recette.update(recette_params)
        format.html { redirect_to @recette, notice: "Recette was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @recette }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recettes/1 or /recettes/1.json
  def destroy
    @recette.destroy!

    respond_to do |format|
      format.html { redirect_to recettes_path, notice: "Recette was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recette
      @recette = Recette.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def recette_params
      params.expect(recette: [ :nom, :ingredients, :instructions ])
    end
end
