class JobApplicationsController < ApplicationController

#http_basic_authenticate_with name: "AdminUser", password: "AdminPassword", except: [:create, :new, :update, :edit]
before_action :signed_in_user, only: [:index, :destroy, :show, :edit]

def new
  @application = JobApplication.new
end

def edit
  @application = JobApplication.find(params[:id])
end

def index
  @application = JobApplication.all
end

def show
  @application = JobApplication.find(params[:id])
end

def destroy
  @application = JobApplication.find(params[:id])
  @application.destroy

  redirect_to job_applications_path
end

def create
  #render plain: params[:job_application].inspect
  @application = JobApplication.new(application_params)
 
  if @application.save
    #redirect_to @application
    redirect_to root_url, notice: "You have successfully submitted your application."
  else
    render 'new'
  end
end

def update
  @application = JobApplication.find(params[:id])
  if @application.update(application_params)
    redirect_to @application
  else
    render 'edit'
  end
end

private
  def application_params
    params.require(:job_application).permit(:name,:email,:answer1,:answer2,:answer3)
  end

  def signed_in_user
    redirect_to signin_url, notice: "Please sign in." unless signed_in?
  end

end
