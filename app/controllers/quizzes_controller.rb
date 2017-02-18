class QuizzesController < ApplicationController
  before_action :set_quizz, only: [:show, :edit, :update, :destroy]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quizz.all
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quizz = Quizz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quizz = Quizz.new(quizz_params)

    respond_to do |format|
      if @quizz.save
        format.html { redirect_to quizz_path(@quizz), notice: I18n.t('shared.updated', resource: 'Quizz') }
        format.json { render :show, status: :created, location: @quizz }
      else
        format.html { render :new }
        format.json { render json: @quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quizz.update(quizz_params)
        format.html { redirect_to @quizz, notice: I18n.t('shared.deleted', resource: 'Quizz') }
        format.json { render :show, status: :ok, location: @quizz }
      else
        format.html { render :edit }
        format.json { render json: @quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quizz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: I18n.t('shared.deleted', resource: 'Quizz') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quizz
      @quizz = Quizz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quizz_params
      params.require(:quizz).permit(:title, :description)
    end
end
