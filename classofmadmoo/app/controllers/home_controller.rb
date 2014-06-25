class HomeController < ApplicationController
  def index
    @teams = Team.all
    if current_user.team_id != nil
    	team = Team.find(current_user.team_id)
    	@projects = Project.where(team_id: current_user.team_id)
    	@work_assignments = {}
    	@projects.all.each do |project|
	    	@work_assignments = WorkAssignment.where(project_id: project.id)
    	end
    end
  end
end
