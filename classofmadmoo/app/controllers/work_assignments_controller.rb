class WorkAssignmentsController < ApplicationController
  before_action :set_work_assignment, only: [:show, :edit, :update, :destroy]

  # GET /work_assignments
  # GET /work_assignments.json
  def index
    @work_assignments = WorkAssignment.all
  end

  # GET /work_assignments/1
  # GET /work_assignments/1.json
  def show
    @assignments = @work_assignment.assignments
  end

  # GET /work_assignments/new
  def new
    @work_assignment = WorkAssignment.new
    @project = params[:project_id]
  end

  # GET /work_assignments/1/edit
  def edit
  end

  # POST /work_assignments
  # POST /work_assignments.json
  def create
    @work_assignment = WorkAssignment.new(work_assignment_params)
    @work_assignment.user = current_user
    respond_to do |format|
      if @work_assignment.save
        format.html { redirect_to @work_assignment, notice: 'Work assignment was successfully created.' }
        format.json { render :show, status: :created, location: @work_assignment }
      else
        format.html { render :new }
        format.json { render json: @work_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_assignments/1
  # PATCH/PUT /work_assignments/1.json
  def update
    respond_to do |format|
      if @work_assignment.update(work_assignment_params)
        format.html { redirect_to @work_assignment, notice: 'Work assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_assignment }
      else
        format.html { render :edit }
        format.json { render json: @work_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_assignments/1
  # DELETE /work_assignments/1.json
  def destroy
    @work_assignment.destroy
    respond_to do |format|
      format.html { redirect_to work_assignments_url, notice: 'Work assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_assignment
      @work_assignment = WorkAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_assignment_params
      params.require(:work_assignment).permit(:user_id, :project_id, :title, :body)
    end
end
