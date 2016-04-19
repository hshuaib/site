class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:create, :new]
  before_filter :admin_only, :except => [:create, :new]


  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.search(params[:search])    
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # GET /applicants/1/edit
  def edit
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)

    respond_to do |format|
      if @applicant.save
        format.html { redirect_to page_path('requestSaved'), notice: 'تم إدخال الطلب الجديد بنجاح' }
        format.json { render :show, status: :created, location: @applicant }
      else
        format.html { render :new }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicants/1
  # PATCH/PUT /applicants/1.json
  def update
    respond_to do |format|
      if @applicant.update(applicant_params)
        format.html { redirect_to @applicant, notice: 'تم تحديث الطلب بنجاح' }
        format.json { render :show, status: :ok, location: @applicant }
      else
        format.html { render :edit }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    @applicant.destroy
    respond_to do |format|
      format.html { redirect_to applicants_url, notice: 'تم مسح الطلب بنجاح' }
      format.json { head :no_content }
    end
  end

  private
  # this below code for checking if logged in user is the admin!
    def admin_only
     unless current_user.admin?
       redirect_to :back, :alert => "لا يمكن الدخول لهذه الصفحة"
     end
   end
  
  
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant
      @applicant = Applicant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_params
      params.require(:applicant).permit(:name, :QID, :nationality, :dob, :gender, :status, :noOfChildren, :livingArea, :phoneNo, :mobileNo, :notes, :age, :reason, :education, :workshop, :currentJob, :jobDescription, :abilities, :preference, :skills, :image, :cv, :membership, disability:[], details:[])
    end
end
