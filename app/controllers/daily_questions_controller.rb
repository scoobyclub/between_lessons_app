class DailyQuestionsController < ApplicationController
  before_action :set_daily_question, only: [:show, :edit, :update, :destroy]

  # GET /daily_questions
  # GET /daily_questions.json
  def index
    @daily_questions = DailyQuestion.all
  end

  # GET /daily_questions/1
  # GET /daily_questions/1.json
  def show
  end

  # GET /daily_questions/new
  def new
    @daily_question = DailyQuestion.new
  end

  # GET /daily_questions/1/edit
  def edit
  end

  # POST /daily_questions
  # POST /daily_questions.json
  def create
    @daily_question = DailyQuestion.new(daily_question_params)

    respond_to do |format|
      if @daily_question.save
        format.html { redirect_to @daily_question, notice: 'Daily question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @daily_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @daily_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_questions/1
  # PATCH/PUT /daily_questions/1.json
  def update
    respond_to do |format|
      if @daily_question.update(daily_question_params)
        format.html { redirect_to @daily_question, notice: 'Daily question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @daily_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_questions/1
  # DELETE /daily_questions/1.json
  def destroy
    @daily_question.destroy
    respond_to do |format|
      format.html { redirect_to daily_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_question
      @daily_question = DailyQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_question_params
      params.require(:daily_question).permit(:question, :response, :user, :answered)
    end
end
