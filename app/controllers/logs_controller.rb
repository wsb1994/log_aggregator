class LogsController < ApplicationController
  before_action :set_log, only: %i[ show update destroy ]

  # GET /logs
  def index
    @logs = Log.all
    render json: @logs
  end

  # GET /logs/1
  def show
    render json: @log
  end

  # GET /number/logs/n
  def top_n
  @results =  Log.all.limit(params[:n])
    render json: @results
  end

  # POST /logs
  def create
    json_params = JSON.parse(request.raw_post)
    @log = Log.new(json_params)

    if @log.save
      render json: @log, status: :created, location: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logs/1
  def update
    if @log.update(log_params)
      render json: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logs/1
  def destroy
    @log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @log = Log.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def log_params
      params.require(:log).permit(:message, :is_error, :machine_id)
    end
end
