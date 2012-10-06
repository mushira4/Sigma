class FollowedCompaniesController < ApplicationController
  # GET /followed_companies
  # GET /followed_companies.json
  def index
    @followed_companies = FollowedCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @followed_companies }
    end
  end

  # GET /followed_companies/1
  # GET /followed_companies/1.json
  def show
    @followed_company = FollowedCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @followed_company }
    end
  end

  # GET /followed_companies/new
  # GET /followed_companies/new.json
  def new
    @followed_company = FollowedCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @followed_company }
    end
  end

  # GET /followed_companies/1/edit
  def edit
    @followed_company = FollowedCompany.find(params[:id])
  end

  # POST /followed_companies
  # POST /followed_companies.json
  def create
    @followed_company = FollowedCompany.new(params[:followed_company])

    respond_to do |format|
      if @followed_company.save
        format.html { redirect_to @followed_company, notice: 'Followed company was successfully created.' }
        format.json { render json: @followed_company, status: :created, location: @followed_company }
      else
        format.html { render action: "new" }
        format.json { render json: @followed_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /followed_companies/1
  # PUT /followed_companies/1.json
  def update
    @followed_company = FollowedCompany.find(params[:id])

    respond_to do |format|
      if @followed_company.update_attributes(params[:followed_company])
        format.html { redirect_to @followed_company, notice: 'Followed company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @followed_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followed_companies/1
  # DELETE /followed_companies/1.json
  def destroy
    @followed_company = FollowedCompany.find(params[:id])
    @followed_company.destroy

    respond_to do |format|
      format.html { redirect_to followed_companies_url }
      format.json { head :no_content }
    end
  end
end
