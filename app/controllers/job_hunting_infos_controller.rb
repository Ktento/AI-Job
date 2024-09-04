class JobHuntingInfosController < ApplicationController
  before_action :set_job_hunting_info, only: %i[ show edit update destroy ]

  # GET /job_hunting_infos or /job_hunting_infos.json
  def index
    @job_hunting_infos = JobHuntingInfo.all
  end

  # GET /job_hunting_infos/1 or /job_hunting_infos/1.json
  def show
  end

  # GET /job_hunting_infos/new
  def new
    @job_hunting_info = JobHuntingInfo.new
  end

  # GET /job_hunting_infos/1/edit
  def edit
  end

  # POST /job_hunting_infos or /job_hunting_infos.json
  def create
    @job_hunting_info = JobHuntingInfo.new(job_hunting_info_params)

    respond_to do |format|
      if @job_hunting_info.save
        format.html { redirect_to job_hunting_info_url(@job_hunting_info), notice: "Job hunting info was successfully created." }
        format.json { render :show, status: :created, location: @job_hunting_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_hunting_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_hunting_infos/1 or /job_hunting_infos/1.json
  def update
    respond_to do |format|
      if @job_hunting_info.update(job_hunting_info_params)
        format.html { redirect_to job_hunting_info_url(@job_hunting_info), notice: "Job hunting info was successfully updated." }
        format.json { render :show, status: :ok, location: @job_hunting_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_hunting_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_hunting_infos/1 or /job_hunting_infos/1.json
  def destroy
    @job_hunting_info.destroy!

    respond_to do |format|
      format.html { redirect_to job_hunting_infos_url, notice: "Job hunting info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_hunting_info
      @job_hunting_info = JobHuntingInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_hunting_info_params
      params.require(:job_hunting_info).permit(:user_id, :self_pr, :motivation, :extracurricular_activities)
    end
end
